#ifndef  _CNewDoc_H_

  #define  _CNewDoc_H_

  #include "Model\math_00.h"
  #include "Model\math_03.h"
  #include "Model\math_05.h"

  #define  L   100

  class CNewDoc 
  {       
       // ...
       CNet             X;
       DComplex        *U;
       DComplex        *H;
       DComplex        *R;
       // ...
       double          *V;
       // ...
       char      NCalc[L];

       int   Allocate( DComplex **Des, int     Size );
       int   Allocate( double   **Des, int     Size );
       void   Convert( DComplex  *Src, double  *Des );

     public:
       CNewDoc();
      ~CNewDoc();

       // ...
       double         A;
       double         B;
       int            N;
       // ...
       double       SgU;
       double       SgH;

       // ...
       double    *XView;
       double    *YView;
       int        SView;
       // ...
       char      *NView;

       int     ReInit( double a, double b, int n );

       void  Signal( void );
	   void Procces( void );
       
            
  };

#endif