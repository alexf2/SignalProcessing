#include "StdAfx.h"
#include "NewDoc.h"


CNewDoc:: CNewDoc()
{
   T       =   0.0;
   N       =     0;

   // идеальный сигнал
   Ag2     =   1.0;
   Tog2    =   1.0;
   Sg2     =   1.2;

   // исходный сигнал
   Ag1     =   1.0;
   Tog1    =   1.0;
   Sg1     =   1.0;

   U1      =  NULL;
   U2      =  NULL;
   H       =  NULL;
   XRo     =  NULL;
   V       =  NULL;

   YexView =  NULL;
   YapView =  NULL;
   XView   =  NULL;
   SView   =     0;
   NView   =  NULL;

   ReInit( 6.0, 128 );
}

CNewDoc::~CNewDoc()
{
   if( U1  )
     delete[]  U1;
   if( U2  )
     delete[]  U2;
   if( H   ) 
     delete[]   H;
   if( V   )
     delete[]   V;
   if( XRo )
     delete[] XRo;
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
     Des[i] = abs( Src[i] ) * abs( Src[i] );

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

      if( !Allocate( &U1, N ) )
        return  0;
      if( !Allocate( &U2, N ) )
        return  0;
      if( !Allocate(  &H, N ) )
        return  0;
      if( !Allocate(  &V, N ) )
        return  0;
      if( !Allocate(&XRo, N ) )
        return  0;
   }

   return  1;
}

void CNewDoc::Direct( double alpha, double step )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   CGauss    Gauss1(   Ag1, Tog1, Sg1 );
   CGauss    Gauss2(   Ag2, Tog2, Sg2 );
   CRegular     Reg( alpha, step      );

   for( int i = 0 ; i < Xu.Size ; i++ )
   { 
      U1[i] = DComplex( Gauss1.Value( Xu.Data[i] ), 0.0 );
      U2[i] = DComplex( Gauss2.Value( Xu.Data[i] ), 0.0 );
   }

   Reg.CalcH( U1, U2, T, N, H );

   Convert( H, V, 1 );
   strcpy ( NCalc, "Функция импульсного отклика H(t)." );

   XView   = Xu.Data;
   YexView =       V;
   SView   = Xu.Size;
   NView   =   NCalc;
}

void CNewDoc::Alpha( double alpha, double step )
{
   XView   =  NULL;
   YexView =  NULL;
   YapView =  NULL;
   SView   =     0;
   NView   =  NULL;

   CGauss    Gauss1(   Ag1, Tog1, Sg1 );
   CGauss    Gauss2(   Ag2, Tog2, Sg2 );
   CRegular     Reg( alpha, step      );

   for( int i = 0 ; i < Xu.Size ; i++ )
   { 
      U1 [i] = DComplex( Gauss1.Value( Xu.Data[i] ), 0.0 );
      U2 [i] = DComplex( Gauss2.Value( Xu.Data[i] ), 0.0 );
      XRo[i] = alpha - i * step;
   }

   Reg.CalcRo( U1, U2, T, N, V );

   strcpy ( NCalc, "Функция Ro(alpha)." );

   XView   =   XRo;
   YexView =     V;
   SView   =     N;
   NView   = NCalc;
}