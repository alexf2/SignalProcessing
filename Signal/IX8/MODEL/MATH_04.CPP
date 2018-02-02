#include  "StdAfx.h"
#include "Math_04.h"

void  CFure::Direct ( DComplex   *U, DComplex *Uf )
{
   double  Pow = 2.0 * PI / N;

   for( int k = 0 ; k < N ; k++ )
   {
       Uf[k]  = 0.0;

       for( int l = 0 ; l < N ; l++ )
       {
          Uf[k] += U[l] * exp( -DComplex( 0.0, Pow * k * l ) );
       }

       Uf[k] *= ( T / N );
   }
}

void  CFure::Reverse( DComplex  *Uf, DComplex  *U )
{
   double  Pow = 2.0 * PI / N;

   for( int l = 0 ; l < N ; l++ )
   {
       U[l]  = 0.0;

       for( int k = 0 ; k < N ; k++ )
       {
          U[l] += Uf[k] * exp(  DComplex( 0.0, Pow * l * k ) );
       }

       // на N уже делили ! ( см. Direct )
       U[l] /= T;
   }
}

// от Филиппова...

int CFure::st( int n, int np )
{
   int m = 1, i;

   for( i = 1 ; i <= np ; i++ )
     m = m * n;

   return  m;
}

void CFure::Fft( DComplex *x, int sign, int np, double t )
{
   int                                                  msk[19];
   double                                                 cs[2];
   DComplex                                      cxcs, xa, hold;
   int         nmax, i, j, nn, mm, lr, nw, nw1, ii, ij, loc, ll;
   double                                      zz, pi, delta, w;

   pi    =                     PI;
   nmax  =            st( 2, np );
   zz    = 2.0 * pi * sign / nmax;
   delta =               t / nmax;

   if( sign < 0.0 )
    delta = 1.0 / t;

   msk[0] = nmax / 2;

   for( i = 1 ; i < np ; i++ )
    msk[i] = msk[i-1] / 2;

   nn = nmax;
   mm =    2;

   for( lr = 1 ; lr <= np ; lr++ )
   {
     nn = nn / 2;
     nw =      0;

     for( i = 1 ; i <= mm ; i +=2 )
     {
        ii    =   nn * i;
        w     =  nw * zz;
        cs[0] = cos( w );
        cs[1] = sin( w );

        cxcs  = DComplex( cs[0], cs[1] );

        for( j = 1 ; j <= nn ; j++ )
        {
           ii      = ii +  1;
           ij      = ii - nn;

           xa      = cxcs * x[ii-1];
           x[ii-1] = x[ij-1] -   xa;
           x[ij-1] = x[ij-1] +   xa;
        }

        for( loc = 2 ; loc <= np ; loc++ )
        {
           ll = nw - msk[loc-1];

           if( ll <= 0 )
             break;
           else
             nw = ll;
        }

        if( ll == 0 )
         nw =        msk[loc];
        else
         nw = nw + msk[loc-1];
     }

     mm = 2 * mm;
   }

   nw = 0;

   for( i = 1 ; i <= nmax ; i++ )
   {
     nw1   =    nw + 1;
     hold = x[nw1 - 1];

     if( nw1 - i > 0 )
     {
       x[nw1-1] = DComplex( real( x[i-1] ) * delta, imag( x[i-1] ) * delta );
     }

     if( nw1 - i >= 0 )
     {
       x[i-1] = DComplex( real( hold ) * delta, imag( hold ) * delta );
     }

     for( loc = 1 ; loc <= np ; loc++ )
     {
       ll = nw - msk[loc-1];

       if( ll <= 0 )
         break;
       else
         nw=ll;
     }

     if( ll == 0 )
       nw =        msk[loc];
     else
       nw = nw + msk[loc-1];
   }
}