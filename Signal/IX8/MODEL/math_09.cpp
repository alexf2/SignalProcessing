#include  "StdAfx.h"
#include "Math_09.h"

// ���������� ��������� �������
double CMix::FindA( DComplex *U, int Size            )
{
   double  A = abs( U[0] );

   for( int i = 1 ; i < Size ; i++ )
   {
      if( A < abs( U[i] ) )
        A = abs( U[i] );
   }

   return  A;
}

// ������ � ������ U Count �����
void   CMix::  Mix( DComplex *U, int    N, int Count )
{
   double  A = FindA( U, N );

   for( int i = 0, j ; i < Count ; i++ )
   {
      do{

           j = ( int ) ( N * Rand() + 0.5 );

        }while( j >= N );
      
      U[j] += A * Rand();
   }
}