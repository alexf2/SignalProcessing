#include  "StdAfx.h"
#include "Math_08.h"

int       CRegular:: GetPower( int        N                                                )
{
   int  n = 2, i = 1;

   while( n < N )
   {
      n *= 2;
      i += 1;
   }

   return  i;
}

double    CRegular::    FindA( DComplex  *U, int        N                                  )
{
   double  A = abs( U[0] );

   for( int i = 1 ; i < N ; i++ )
   {
      if( A < abs( U[i] ) )
        A = abs( U[i] );
   }

   return  A;
}

double    CRegular::CalcBetta( DComplex *F1, DComplex *F2, double T, int N, double   alpha )
{
   /*
   double  stepT = T / N, val = 2.0 * PI / T, res = 0.0, up, dn;

   for( int m = 0 ; m < N ; m++ )
   {
      up  =         alpha * alpha * ( 1.0 + val * m * val * m ) * abs( F1[m] ) * abs( F1[m] );
      dn  = abs( F2[m] ) * abs( F2[m] ) * stepT * stepT + alpha * ( 1.0 + val * m * val * m );

      res = res + up / ( dn * dn );
   }

   return  res * stepT / N;
   */

   double  stepT = T / N, sqrAlpha = alpha * alpha, val = 2.0 * PI / T, res = 0.0;

   for( int m = 0 ; m < N ; m++ )
   {
      // числитель
      double  up =             sqrAlpha * ( 1.0 + SQR( val * m ) ) * SQR( abs( F1[m] ) );
      // знаменатель
      double  dn = SQR( abs( F2[m] ) ) * SQR( stepT ) + alpha * ( 1.0 + SQR( val * m ) );

      res += up / ( dn * dn );
   }
  
   return  res * stepT / N;
}

double    CRegular::CalcGamma( DComplex *F1, DComplex *F2, double T, int N, double   alpha )
{
   /*
   double  stepT = T / N, val = 2.0 * PI / T, val1 = PI / alpha, res = 0.0, up, dn;

   for( int m = 0 ; m < N ; m++ )
   {
      up  = abs( F2[m] ) * abs( F2[m] ) * stepT * stepT * abs( F1[m] ) * abs( F1[m] ) * ( 1.0 + val1 * m * val1 * m );
      dn  =                         abs( F2[m] ) * abs( F2[m] ) * stepT * stepT + alpha * ( 1.0 + val * m * val * m );

      res = res + up / ( dn * dn );
   }

   return  res * stepT / N;
   */

   double  stepT = T / N, val = 2.0 * PI / T, res = 0.0, sqrStepT = stepT * stepT;

   for( int m = 0 ; m < N ; m++ )
   {
      // числитель
      double  up = SQR( abs( F2[m] ) ) * sqrStepT * SQR( abs( F1[m] ) ) * ( 1.0 + SQR( PI * m / alpha ) );
      // знаменатель
      double  dn =                      SQR( abs( F2[m] ) ) * sqrStepT + alpha * ( 1.0 + SQR( val * m ) );

      res += up / ( dn * dn );
   }
  
   return  res * stepT / N;
}

double    CRegular::FindAlpha( DComplex *Fs, DComplex *Fi, double T, int N                 )
{
   double  Alpha = BegAlpha, Ro, Tmp;

   do{

        Tmp    = sqrt( CalcGamma( Fs, Fi, T, N, Alpha ) ) * Eps + Delta;
        Ro     =           CalcBetta( Fs, Fi, T, N, Alpha ) - Tmp * Tmp;

        // к следующей точке
        Alpha -= Step;

     }while( Ro > 0.0 );

   // см. выше
   return  Alpha + Step;
}

void      CRegular::    CalcH( DComplex *U1, DComplex *U2, double T, int N, DComplex    *H )
{
   Fure.ReInit( T, N );

   // согласно рекомендациям
   Eps   = FindA( U1, N ) * 10.0 / 100.0;
   Delta = FindA( U2, N ) *  7.0 / 100.0;

   // спектр
   Fure.Fft( U1,  1, GetPower( N ), T );
   Fure.Fft( U2,  1, GetPower( N ), T );

   // расчет H
   double  Alpha = FindAlpha( U1, U2, T, N ), stepT = T / N, val1 = 2.0 * PI / N, val2 = 2.0 * PI / T;

   for( int k = 0 ; k < N ; k++ )
   {
      H[k] = 0.0;

      for( int m = 0 ; m < N ; m++ )
      {
         DComplex  conj =                              DComplex( real( U2[m] ), -imag( U2[m] ) );
         DComplex  up   =                   exp( DComplex( 0.0, -val1 * k * m ) ) * U1[m] * conj;
         DComplex  dn   = SQR( abs( U2[m] ) ) * SQR( stepT ) + Alpha * ( 1.0 + SQR( val2 * m ) );

         H[k] += up / dn;
      }

      H[k] *= stepT / N;
   }

   // сигнал
   Fure.Fft( U1, -1, GetPower( N ), T );
   Fure.Fft( U2, -1, GetPower( N ), T );

   /*
   Fure.ReInit( T, N );

   // согласно рекомендациям
   Eps   = FindA( U1, N ) * 10.0 / 100.0;
   Delta = FindA( U2, N ) *  7.0 / 100.0;

   // спектр
   Fure.Fft( U1,  1, GetPower( N ), T );
   Fure.Fft( U2,  1, GetPower( N ), T );

   // расчет H
   double                             alpha = FindAlpha( U1, U2, T, N );
   double    val = 2.0 * PI / N, val1 = 2.0 * PI / T, stepT = T / N, dn;
   DComplex                                                          up;

   for( int k = 0 ; k < N ; k++ )
   {
      H[k] = 0.0;

      for( int m = 0 ; m < N ; m++ )
      {
         up   = exp( DComplex( 0.0, -val * k * m ) ) * U1[m] * DComplex( real( U2[m] ), -imag( U2[m] ) );
         dn   =      abs( U2[m] ) * abs( U2[m] ) * stepT * stepT + alpha * ( 1.0 + val1 * m * val1 * m );

         H[k] = H[k] + up / dn;
      }

      H[k] = H[k] * ( stepT / N );
   }

   // сигнал
   Fure.Fft( U1, -1, GetPower( N ), T );
   Fure.Fft( U2, -1, GetPower( N ), T );
   */
}

void    CRegular::     CalcRo( DComplex *U1, DComplex *U2, double T, int N, double     *Ro )
{
   Fure.ReInit( T, N );

   // согласно рекомендациям
   Eps   = FindA( U1, N ) * 10.0 / 100.0;
   Delta = FindA( U2, N ) *  7.0 / 100.0;

   // спектр
   Fure.Fft( U1,  1, GetPower( N ), T );
   Fure.Fft( U2,  1, GetPower( N ), T );

   // расчет Ro( alpha )
   double  Alpha = BegAlpha, Tmp;

   for( int i = 0 ; i < N ; i++)
   {
      Tmp    = sqrt( CalcGamma( U1, U2, T, N, Alpha ) ) * Eps + Delta;
      Ro[i]  =           CalcBetta( U1, U2, T, N, Alpha ) - Tmp * Tmp;

      // к следующей точке
      Alpha -= Step;
   }

   // сигнал
   Fure.Fft( U1, -1, GetPower( N ), T );
   Fure.Fft( U2, -1, GetPower( N ), T );
}
