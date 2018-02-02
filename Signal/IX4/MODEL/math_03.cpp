#include  "StdAfx.h"
#include "Math_03.h"

double  CGauss::Value( double t )
{
   return  A * exp( -( t - To ) * ( t - To ) / S );
}
