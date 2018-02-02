#include  "StdAfx.h"
#include "Math_07.h"

// возвращает степень, в которую нужно вознести 2 чтобы получить N
int   CFilter::GetPower( int N )
{
   int  n = 2, i = 1;

   while( n < N )
   {
      n *= 2;
      i += 1;
   }

   return  i;
}

void  CFilter::  Filter( DComplex *U, int N, DComplex *FEta, double T )
{
   Fure.Fft( U,  1, GetPower( N ), T );

   for( int i = 0 ; i < N ; i++ )
   {
      DComplex  Betta2 = abs(    U[i] ) * abs(    U[i] );
      DComplex  Cappa2 = abs( FEta[i] ) * abs( FEta[i] );

      U[i] = ( Betta2 - Cappa2 ) / Betta2  * U[i];
   }

   Fure.Fft( U, -1, GetPower( N ), T );
}