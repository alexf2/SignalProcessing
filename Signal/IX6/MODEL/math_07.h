#ifndef  _CFilter_H_

  #define  _CFilter_H_

  #include  <stdlib.h>
  #include "Math_03.h"
  #include "Math_04.h"

  class CFilter
  {
       // ...
       CFure   Fure;

       int  GetPower( int N );

     public:
       CFilter()
       {
       }

       void  Filter( DComplex *U, int N, DComplex *FEta, double T );
  };

#endif