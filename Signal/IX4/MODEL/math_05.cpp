#include  "StdAfx.h"
#include "Math_05.h"

int  CCurtail::Allocate( DComplex **Des, int Size )
{
   if( *Des )
     delete[]  *Des;

   if( ( *Des = new DComplex [Size] ) == NULL )
     return  0;

   return  1;
}

int  CCurtail::GetPower( int N )
{
   int  n = 2, i = 1;

   while( n < N )
   {
      n *= 2;
      i += 1;
   }

   return  i;
}

void CCurtail::Widen( DComplex *Src, int Size, DComplex **Des )
{
   Allocate( Des, 2 * Size );

   for( int i = 0 ; i < 2 * Size ; i++ )
   {
      if( i < Size )
        ( *Des )[i] = Src[i];
      else
        ( *Des )[i] =    0.0;
   }
}

// размер R должен быть равен 2 * N !
//
void CCurtail::Calculate( DComplex *U, DComplex *H, double T, int N, DComplex *R )
{
   int  i, n = GetPower( N ) + 1;

   Widen( U, N, &Uw );
   Widen( H, N, &Hw );

   Fure.Fft( Uw,  1.0, n, 2.0 * T );
   Fure.Fft( Hw,  1.0, n, 2.0 * T );

   for( i = 0 ; i < 2 * N ; i++ )
     R[i] = Uw[i] * Hw[i];

   Fure.Fft( R, -1.0, n, 2.0 * T );
}