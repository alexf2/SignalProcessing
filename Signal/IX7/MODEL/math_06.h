#ifndef  _CMix_H_

  #define  _CMix_H_

  #include  <stdlib.h>
  #include    <math.h>
  #include "Math_03.h"
  #include "Math_04.h"

  class CMix
  {
       // ...
       CFure    Fure;
       // ...
       double     Ag;
       double     To;
       double     Sg;

       // случайное число в диапазоне [ 0.0; 1.0 )
       double  Rand()
       {
          return  ( double ) rand() / RAND_MAX;
       }

       // возвращает амплитуду сигнала
       double    FindA( DComplex   *U, int Size                          );

       // расчитывает массив случайных величин Ksi
       void    CalcKsi( DComplex *Ksi, int Size, double A                );
       // расчитывает массив величин Eta ( энерге-
       // тический спектр "прошит" )
       void    CalcEta( DComplex *Eta, int Size, DComplex *Ksi, double T );

     public:
       CMix( double a, double t, double s ) : Ag( a ), To( t ), Sg( s )
       {
       }

       // вносит в сигнал U помехи
       void  Mix( DComplex *U, int N, DComplex *Eta, double T );
  };

#endif