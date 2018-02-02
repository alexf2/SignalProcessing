#ifndef  _CNewDoc_H_

  #define  _CNewDoc_H_

  #include "Model\math_00.h"
  #include "Model\math_03.h"
  #include "Model\math_09.h"
  #include "Model\math_10.h"

  #define  L   100

  class CNewDoc 
  {
       

       // ...
       CNet            Xu;
       DComplex        *U;
       DComplex       *Ui;
       DComplex       *Uv;
       // ...
       double          *I;
       double          *V;
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
       double       Ag1;
       double      Tog1;
       double       Sg1;

       // ...
       double    *XView;
       double  *YexView;
       double  *YapView;
       int        SView;
       // ...
       char      *NView;

       int   ReInit( double  t, int        n );

       void SignalC( void                    );
       void  Direct( int     N               );
       void   Alpha( int    Nm, double Delta );
       
  };

#endif