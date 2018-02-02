#ifndef  _CFure_H_

  #define  _CFure_H_

  #include <complex>
using namespace std;
  #define  PI  3.14159265358979323846

  typedef  complex<double>  DComplex;

  class CFure
  {
       // ...
       double      T;
       int         N;

       int  st( int n, int np );

     public:
       CFure()
       {
          memset( this, 0, sizeof( CFure ) );
       }
       CFure( double t, int n ) : T( t ), N( n )
       {
       }

       void  ReInit( double     T, int        N )
       {
          this -> T = T;
          this -> N = N;
       }

       void  Direct( DComplex  *U, DComplex   *Uf                   );
       void Reverse( DComplex *Uf, DComplex    *U                   );
       void     Fft( DComplex  *X, int       Sign, int Np, double T );
  };

#endif