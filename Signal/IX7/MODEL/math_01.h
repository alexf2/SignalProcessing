#ifndef  _CImpulse_H_

  #define  _CInpulse_H_

  class CImpulse
  {
       double   A;
       double  To;

       int     Delta( double t );

     public:
       CImpulse( double a, double to ) : A( a ), To( to ) 
       {
       }

       double  Value( double t );
  };

#endif