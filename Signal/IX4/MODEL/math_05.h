#ifndef  _CCurtail_H_

  #define  _CCurtail_H_

  #include "Math_04.h"

  class CCurtail
  {
       // ...
       CFure     Fure;

       // ...
       DComplex   *Uw;
       DComplex   *Hw;

       int   Allocate( DComplex **Des, int Size                 );
       int   GetPower( int          N                           );
       void     Widen( DComplex  *Src, int Size, DComplex **Des );

     public:
       CCurtail()
       {
          memset( this, 0, sizeof( CCurtail ) );
       }
      ~CCurtail()
       {
          if( Uw )
            delete[]  Uw;
          if( Hw )
            delete[]  Hw;
       }

       void Calculate( DComplex *U, DComplex *H, double T, int N, DComplex *R );
  };

#endif