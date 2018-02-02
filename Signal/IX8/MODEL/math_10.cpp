#include  "StdAfx.h"
#include "Math_10.h"

void     CFilter::  Sort( DComplex  *M, int  Nm )
{
   DComplex  temp;

   for( int i = 0, k ; i < Nm-1 ; i++ )
   {
      k = i;

      for( int j = i + 1 ; j < Nm ; j++ )
        if( abs( M[j] ) < abs( M[k] ) ) k = j;

      temp = M[k];
      M[k] = M[i];
      M[i] = temp;
   }
}

DComplex CFilter::   Med( DComplex  *M, int  Nm )
{
   DComplex  MED, *Tmp = new DComplex [Nm];

   for( int i = 0 ; i < Nm ; i++ )
     Tmp[i] = M[i];

   Sort( Tmp, Nm );

   MED = Tmp[ Nm / 2 ];

   delete[]  Tmp;

   return  MED;

/*
   DComplex  Tmp = DComplex( 0.0, 0.0 );

   for( int i = 0 ; i < Nm ; i++ )
     Tmp += M[i];

   return  Tmp / ( double ) Nm;
*/
}

void     CFilter::Filter( DComplex *Ui, DComplex *Uv, int N, int Nm, double Delta )
{
   int       i, beg, Half = Nm / 2;
   DComplex                    MED;

   for( i = 0 ; i < N ; i++ )
   {
      if( i - Half < 0 )
        beg = 0;
      else
      {
         if( i + Half >= N )
           beg = N -   Nm;
         else
           beg = i - Half;
      }

      MED = Med( &Ui[beg], Nm );

      if( abs( Ui[i] - MED ) < Delta )
        Uv[i] = Ui[i];
      else
        Uv[i] =   MED;
   }
}