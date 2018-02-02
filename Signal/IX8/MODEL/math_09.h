#ifndef  _CMix_H_

  #define  _CMix_H_

  #include  <stdlib.h>
  #include "Math_04.h"

  class CMix
  {
       // ��������� ����� � ��������� [ 0.0; 1.0 )
       double  Rand()
       {
          return  ( double ) rand() / RAND_MAX;
       }
       // ���������� ��������� �������
       double  FindA( DComplex *U, int Size );

     public:
       CMix()
       {
          memset( this, 0, sizeof( CMix ) );
       }

       // ������ � ������ U Count �����
       void  Mix( DComplex *U, int N, int Count );
  };

#endif