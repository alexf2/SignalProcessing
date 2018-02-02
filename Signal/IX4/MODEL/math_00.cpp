#include  "StdAfx.h"
#include "Math_00.h"

int  CNet::ReLoad(                     int    size )
{
   if( Size )
     delete[]  Data;

   if( ( Data = new double [ Size = size ] ) == NULL )
     return  0;

   return  1;
}

int  CNet::ReCalc( double a, double b, double step )
{
   int  Size = ( int ) ( ( b - a ) / step ) + 1;

   if( ReLoad( Size ) )
   {
      for( int i = 0 ; i < Size ; i++ )
        Data[i] = a + i * step;

      return  1;
   }

   return  0;
}

int  CNet::ReCalc( double a, double b, int    size )
{
   double  step = ( b - a ) / size;

   if( ReLoad( size ) )
   {
      for( int i = 0 ; i < size ; i++ )
        Data[i] = a + i * step;

      return  1;
   }

   return  0;
}

int  CNet::ReCalc(           double w, double step )
{
   int     Size = ( int ) ( w / step ) + 1;
   double  a    =                 -w / 2.0;

   if( ReLoad( Size ) )
   {
      for( int i = 0 ; i < Size ; i++ )
        Data[i] = a + i * step;

      return  1;
   }

   return  0;
}

int  CNet::ReCalc(           int    n, double step )
{
   if( ReLoad( n ) )
   {
      for( int i = 0 ; i < n ; i++ )
        Data[i] = i * step;

      return  1;
   }

   return  0;
}