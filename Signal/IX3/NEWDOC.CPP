#include "StdAfx.h"
#include "NewDoc.h"



CNewDoc:: CNewDoc()
{
   T       =   0.0;
   N       =     0;

   Ai      =   5.0;
   Toi     =   5.0;

   As      =   1.0;
   Ts      =   2.0;

   Ag      =   5.0;
   Tog     =   5.0;
   Sg      =   5.0;

   U       =  NULL;
   F       =  NULL;
   V       =  NULL;
   Uq      =  NULL;
   Vq      =  NULL;

   YexView =  NULL;
   YapView =  NULL;
   XView   =  NULL;
   SView   =     0;
   NView   =  NULL;

   ReInit( 6.0, 128 );
}

CNewDoc::~CNewDoc()
{
   if( U )
     delete[] U;
   if( F )
     delete[] F;
   if( V )
     delete[] V;
   if( Uq )
     delete[] Uq;
   if( Vq )
     delete[] Vq;
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

void CNewDoc::Convert( DComplex *Src, double *Des, int What )
{
   int  i, HalfSize = N / 2, Delta = HalfSize;

   for( i = 0 ; i < N ; i++ )
     Des[i] = abs( Src[i] );

   // перестановка нужна, т.к. спектр получаем шиворот-навыворот
   if( What )
   {
      if( N % 2 )
        Delta++;

      for( i = 0 ; i < HalfSize ; i++ )
      {
         double  Tmp = Des[i+Delta];

         Des[i+Delta] = Des[i];
         Des[i]       =    Tmp;
      }
   }
}

// возвращает степень, в которую нужно вознести 2 чтобы получить N
int  CNewDoc::GetPower( int N )
{
   int  n = 2, i = 1;

   while( n < N )
   {
      n *= 2;
      i += 1;
   }

   return  i;
}

int  CNewDoc::ReInit( double t, int n )
{
   YexView =  NULL;
   YapView =  NULL;
   XView   =  NULL;
   SView   =     0;
   NView   =  NULL;

   if( t < 0.0 || n < 0 )
     return  0;

   if( T != t || N != n )
   {
      T = t;
      N = n;

      Fure.ReInit( T, N );

      if( !Xu.ReCalc( N,   T / N ) )
        return  0;
      if( !Xf.ReCalc( N, 1.0 / T ) )
        return  0;

      if( !Allocate(  &U, N ) )
        return  0;
      if( !Allocate(  &F, N ) )
        return  0;
      if( !Allocate(  &V, N ) )
        return  0;
      if( !Allocate( &Uq, N ) )
        return  0;
      if( !Allocate( &Vq, N ) )
        return  0;
   }

   return  1;
}

void CNewDoc::SignalA( void )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   /*
   CImpulse  Impulse( Ai, Toi );
	
   for( int i = 0 ; i < Xu.Size ; i++ )
   {
      U[i] = Uq[i] = DComplex( Impulse.Value( Xu.Data[i] ), 0.0 );
   }
   */
}

void CNewDoc::SignalB( void )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   CStep  Step( As, Ts );

   for( int i = 0 ; i < Xu.Size ; i++ )
     U[i] = Uq[i] = DComplex( Step.Value( Xu.Data[i] ), 0.0 );
}

void CNewDoc::SignalC( void )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   CGauss  Gauss( Ag, Tog, Sg );

   for( int i = 0 ; i < Xu.Size ; i++ )
     U[i] = Uq[i] = DComplex( Gauss.Value( Xu.Data[i] ), 0.0 );
}

void CNewDoc::Direct( void )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   int  Tmp = GetPower( N );

   Fure.Direct(  U,  F         );
   Fure.Fft   ( Uq,  1, Tmp, T );

   Convert(  F,  V, 1 );
   Convert( Uq, Vq, 1 );

   strcpy( NCalc, "Спектр." );

   XView   = Xf.Data;
   YexView =       V;
   YapView =      Vq;
   SView   = Xf.Size;
   NView   =   NCalc;
}

void CNewDoc::Reverse( void )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   int  Tmp = GetPower( N );

   Fure.Reverse(  F,  U         );
   Fure.Fft    ( Uq, -1, Tmp, T );

   Convert(  U,  V, 0 );
   Convert( Uq, Vq, 0 );

   strcpy( NCalc, "Сигнал." );

   XView   = Xu.Data;
   YexView =       V;
   YapView =      Vq;
   SView   = Xu.Size;
   NView   =   NCalc;
}