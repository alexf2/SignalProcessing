#ifndef  _CStep_H_

  #define  _CStep_H_

  class CStep
  {
       double  A;
       double  T;

       int      Rect( double t );

     public:
       CStep( double a, double t ) : A( a ), T( t ) 
       {
       }

       double  Value( double t );
  };

#endif