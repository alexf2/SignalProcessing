#include "StdAfx.h"
#include "NewDoc.h"


CNewDoc:: CNewDoc()
{
   T       =   0.0;
   N       =     0;

   // исходный сигнал
   Ag1     =   1.0;
   Tog1    =   1.5;
   Sg1     =   2.0;

   U       =  NULL;
   Ui      =  NULL;
   Uv      =  NULL;
   I       =  NULL;
   V       =  NULL;

   YexView =  NULL;
   YapView =  NULL;
   XView   =  NULL;
   SView   =     0;
   NView   =  NULL;

   ReInit( 3.0, 50 );
}

CNewDoc::~CNewDoc()
{
   if( U  )
     delete[]  U;
   if( Ui )
     delete[] Ui;
   if( Uv ) 
     delete[] Uv;
   if( V   )
     delete[]  V;
   if( I )
     delete[]  I;
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
     Des[i] = abs( Src[i] )/* * abs( Src[i] )*/;

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

      if( !Xu.ReCalc( N, T / N ) )
        return  0;

      if( !Allocate(  &U, N ) )
        return  0;
      if( !Allocate( &Ui, N ) )
        return  0;
      if( !Allocate( &Uv, N ) )
        return  0;
      if( !Allocate(  &V, N ) )
        return  0;
      if( !Allocate(  &I, N ) )
        return  0;
   }

   return  1;
}

void CNewDoc::SignalC( void )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;
}

void CNewDoc::Direct( int Nm )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   CGauss  Gauss( Ag1, Tog1, Sg1 );
   CMix                        Mix;

   for( int i = 0 ; i < Xu.Size ; i++ )
   { 
      U[i] = Ui[i] = DComplex( Gauss.Value( Xu.Data[i] ), 0.0 );
   }

   Mix.Mix( Ui, N, Nm );

   Convert( Ui, I, 0  );

   strcpy ( NCalc, "Искаженный сигнал." );

   XView   = Xu.Data;
   YexView =       I;
   SView   = Xu.Size;
   NView   =   NCalc;
}

void CNewDoc::Alpha( int Nm, double Delta )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   CFilter  Filter;

   Filter.Filter( Ui, Uv, N, Nm, Delta );

   Convert(  U, I, 0 );
   Convert( Uv, V, 0 );

   strcpy ( NCalc, "Восстановленный сигнал ( зеленый )." );

   XView   = Xu.Data;
   YexView =       I;
   YapView =       V;
   SView   = Xu.Size;
   NView   =   NCalc;
}