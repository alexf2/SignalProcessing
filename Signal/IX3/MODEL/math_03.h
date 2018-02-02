#ifndef  _CGauss_H_

  #define  _CGauss_H_

  #include <math.h>

  class CGauss
  {
       double   A;
       double  To;
       double   S;

     public:
       CGauss( double a, double to, double s ) : A( a ), To( to ), S( s ) 
       {
       }

       double  Value( double t );
  };

#endif