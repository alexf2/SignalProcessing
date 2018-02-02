#ifndef  _CFilter_H_

  #define  _CFilter_H_

  #include  <stdlib.h>
  #include "Math_04.h"

  class CFilter
  {
       void       Sort( DComplex  *M, int  Nm );
       DComplex    Med( DComplex  *M, int  Nm );

     public:
       CFilter()
       {
       }

       void     Filter( DComplex *Ui, DComplex *Uv, int N, int Nm, double Delta );
  };

#endif