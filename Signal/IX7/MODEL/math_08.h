#ifndef  _CRegular_H_

  #define  _CRegular_H_

  #include "Math_04.h"

  #define  SQR( X )  ( X ) * ( X )

  class CRegular
  {
       // ...
       CFure       Fure;
       // ...
       double  BegAlpha;
       double      Step;
       // ...
       double       Eps;
       double     Delta;

       int      GetPower( int        N                                                );
       double      FindA( DComplex  *U, int        N                                  );

       double  CalcGamma( DComplex *F1, DComplex *F2, double T, int N, double   alpha );
       double  CalcBetta( DComplex *F1, DComplex *F2, double T, int N, double   alpha );
       double  FindAlpha( DComplex *F1, DComplex *F2, double T, int N                 );

     public:
       CRegular( double begAlpha, double step ) : BegAlpha( begAlpha ), Step( step )
       {
       }

       void        CalcH( DComplex *U1, DComplex *U2, double T, int N, DComplex    *H );
       void       CalcRo( DComplex *U1, DComplex *U2, double T, int N, double     *Ro );
  };

#endif