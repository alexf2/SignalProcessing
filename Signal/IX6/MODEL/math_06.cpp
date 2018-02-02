#include  "StdAfx.h"
#include "Math_06.h"

// возвращает амплитуду сигнала
double CMix::   FindA( DComplex *U, int Size            )
{
   double  A = abs( U[0] );

   for( int i = 1 ; i < Size ; i++ )
   {
      if( A < abs( U[i] ) )
        A = abs( U[i] );
   }

   return  A;
}

// расчитывает массив случайных величин Ksi
void   CMix:: CalcKsi( DComplex *Ksi, int Size, double A )
{
   for( int i = 0 ; i < Size ; i++ )
   {
	   Ksi[i] = DComplex( A * Rand(), A * Rand() );
   }
}

// расчитывает массив величин Eta ( энерге-
// тический спектр "прошит" )
void   CMix:: CalcEta( DComplex *Eta, int Size, DComplex *Ksi, double T )
{
   double    Sqrt = 1.0 / sqrt( ( double ) Size ), stepF = 1.0 / T, Arg = 2.0 * PI / Size;
   CGauss                                                             Gauss( Ag, To, Sg );

   for( int l = 0 ; l < Size ; l++ )
   {
      Eta[l] = 0.0;

      for( int k = 0 ; k < Size ; k++ )
      {
         Eta[l] += Ksi[k] * exp( DComplex( 0.0, Arg * k * l ) ) * Gauss.Value( k * stepF );
      }

      Eta[l] *= Sqrt;
   }
}

// расчитывает помеху Eta и вносит ее в сигнал U
void   CMix::     Mix( DComplex *U, int N, DComplex *Eta, double T )
{
   DComplex  *Ksi = new DComplex [N];

   if( Ksi && Eta )
   {
      CalcKsi( Ksi, N, FindA( U, N )    );
      CalcEta( Eta, N,           Ksi, T );

      for( int i = 0 ; i < N ; i++ )
        U[i] += ( Eta[i] = real( Eta[i] ) );
   }

   delete[]  Ksi;
}


