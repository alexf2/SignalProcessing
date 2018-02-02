#ifndef  _CNet_H_

  #define  _CNet_H_

  class CNet
  {
     public:
       CNet() : Data( NULL ), Size( 0 )
       {
       }
      ~CNet()
       {
          if( Size )
            delete[]  Data;
       }

       double  *Data;
       int      Size;

       int  ReLoad(                     int    size );
       int  ReCalc( double a, double b, double step );
       int  ReCalc(           double w, double step );
       int  ReCalc(           int    n, double step );
  };

#endif