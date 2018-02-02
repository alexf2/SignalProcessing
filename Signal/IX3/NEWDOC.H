#ifndef  _CNewDoc_H_

  #define  _CNewDoc_H_

  #include "Model\math_00.h"
  #include "Model\math_01.h"
  #include "Model\math_02.h"
  #include "Model\math_03.h"
  #include "Model\math_04.h"

  #define  L   100

  class CNewDoc 
  {       
       // ...
       CFure         Fure;
       // ...
       CNet            Xu;
       DComplex        *U;
       CNet            Xf;
       DComplex        *F;
       // ...
       DComplex       *Uq;
       // ...
       double          *V;
       double         *Vq;
       // ...
       char      NCalc[L];

       int   Allocate( DComplex **Des, int     Size            );
       int   Allocate( double   **Des, int     Size            );
       void   Convert( DComplex  *Src, double  *Des, int  What );
       int   GetPower( int          N                          );

     public:
       CNewDoc();
      ~CNewDoc();

       // ...
       double         T;
       int            N;
       // ...
       double        Ai;
       double       Toi;
       // ...
       double        As;
       double        Ts;
       // ...
       double        Ag;
       double       Tog;
       double        Sg;

       // ...
       double    *XView;
       double  *YexView;
       double  *YapView;
       int        SView;
       // ...
       char      *NView;

       int     ReInit( double t, int n );

       void SignalA( void );
       void SignalB( void );
       void SignalC( void );
       void Direct ( void );
       void Reverse( void );

  };

#endif