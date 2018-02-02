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
   Eta     =  NULL;
   V       =  NULL;
   E       =  NULL;

   YexView =  NULL;
   YapView =  NULL;
   XView   =  NULL;
   SView   =     0;
   NView   =  NULL;

   ReInit( 6.0, 128 );
}

CNewDoc::~CNewDoc()
{
   if( U   )
     delete[]   U;
   if( Eta )
     delete[] Eta;
   if( V   ) 
     delete[]   V;
   if( E   )
     delete[]   E;
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
     //Des[i] = abs( Src[i] ) * abs( Src[i] );
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

      if( !Allocate(   &U, N ) )
        return  0;
      if( !Allocate( &Eta, N ) )
        return  0;
      if( !Allocate(   &V, N ) )
        return  0;
      if( !Allocate(   &E, N ) )
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

   /*
   CStep  Step( As, Ts );

   for( int i = 0 ; i < Xu.Size ; i++ )
     U[i] = DComplex( Step.Value( Xu.Data[i] ), 0.0 );
   */
}

void CNewDoc::SignalC( void )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   /*
   CGauss  Gauss( Ag, Tog, Sg );

   for( int i = 0 ; i < Xu.Size ; i++ )
     U[i] = DComplex( Gauss.Value( Xu.Data[i] ), 0.0 );
   */
}

void CNewDoc::Direct( double ag, double to, double sg )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   CGauss  Gauss( Ag, Tog, Sg );
   CMix      Mix( ag,  to, sg );

   for( int i = 0 ; i < Xu.Size ; i++ )
     U[i] = DComplex( Gauss.Value( Xu.Data[i] ), 0.0 );

   Mix.Mix( U, N, Eta, T );

   Convert(   U, V, 0 );
   Convert( Eta, E, 0 );

   strcpy( NCalc, "Сигнал с помехой ( график помехи зеленый )." );

   XView   = Xu.Data;
   YexView =       V;
   YapView =       E;
   SView   = Xu.Size;
   NView   =   NCalc;
}

void CNewDoc::Reverse( void )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   // фильтрация
   CFilter  Filter;

   // получим спектр помехи
   Fure  .Fft   ( Eta, 1, GetPower( N ), T );
   Filter.Filter(   U, N,          Eta, T );

   // расчет "настоящего" сигнала
   CGauss  Gauss( Ag, Tog, Sg );

   for( int i = 0 ; i < Xu.Size ; i++ )
     Eta[i] = DComplex( Gauss.Value( Xu.Data[i] ), 0.0 );

   Convert(   U, V, 0 );
   Convert( Eta, E, 0 );

   strcpy( NCalc, "Отфильтрованный сигнал ( точный сигнал зеленый )." );

   XView   = Xu.Data;
   YexView =       V;
   YapView =       E;
   SView   = Xu.Size;
   NView   =   NCalc;
}