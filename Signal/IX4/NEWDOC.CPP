#include "StdAfx.h"
#include "NewDoc.h"


CNewDoc:: CNewDoc()
{
   A       =   0.0;
   B       =   0.0;
   N       =     0;

   SgU     =   1.0;
   SgH     =   0.5;

   U       =  NULL;
   H       =  NULL;
   R       =  NULL;
   V       =  NULL;

   YView   =  NULL;
   XView   =  NULL;
   SView   =     0;
   NView   =  NULL;

   ReInit( -3.0, 3.0, 128 );
}

CNewDoc::~CNewDoc()
{
   if( U )
     delete[] U;
   if( H )
     delete[] H;
   if( R )
     delete[] R;
   if( V )
     delete[] V;
}


int  CNewDoc::Allocate( DComplex **Des, int Size )
{
   if( *Des )
     delete[]  *Des;

   if( ( *Des = new DComplex [Size] ) == NULL )
     return  0;

   return  1;
}

int  CNewDoc::Allocate( double   **Des, int Size )
{
   if( *Des )
     delete[]  *Des;

   if( ( *Des = new double   [Size] ) == NULL )
     return  0;

   return  1;
}

void CNewDoc::Convert( DComplex *Src, double *Des )
{
   for( int i = 0 ; i < 2 * N ; i++ )
     Des[i] = abs( Src[i] );
}

int  CNewDoc::ReInit( double a, double b, int n )
{
   YView =  NULL;
   XView =  NULL;
   SView =     0;
   NView =  NULL;

   if( b < a || n < 0 )
     return  0;

   if( A != a || B != b || N != n )
   {
      A = a;
      B = b;
      N = n;

      // !
      if( !X.ReCalc( A, A + 2.0 * ( B - A ), 2 * N ) )
        return  0;

      if( !Allocate( &U,     N ) )
        return  0;
      if( !Allocate( &H,     N ) )
        return  0;
      if( !Allocate( &R, 2 * N ) )
        return  0;
      if( !Allocate( &V, 2 * N ) )
        return  0;
   }

   return  1;
}

void CNewDoc::Signal( void )
{
   XView =  NULL;
   YView =  NULL;
   SView =     0;
   NView =  NULL;

   CGauss  GaussU( 1.0, 0.0, SgU * SgU );
   CGauss  GaussH( 1.0, 0.0, SgH * SgH );

   // !
   for( int i = 0 ; i < N ; i++ )
   {
     U[i] = DComplex( GaussU.Value( X.Data[i] ), 0.0 );
     H[i] = DComplex( GaussH.Value( X.Data[i] ), 0.0 );
   }
}

void CNewDoc::Procces( void )
{
   XView =   NULL;
   YView =   NULL;
   SView =      0;
   NView =   NULL;

   CCurtail  Curtail;

   Curtail.Calculate( U, H, B - A, N, R );

   Convert( R, V );

   strcpy( NCalc, "Свертка." );

   XView = X.Data;
   YView =      V;
   SView = X.Size;
   NView =  NCalc;
}