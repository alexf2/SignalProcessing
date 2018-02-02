#include  "StdAfx.h"
#include "Math_02.h"

int     CStep:: Rect( double t )
{
   if( 0.0 <= t && t <= 1.0 )
     return  1;

   return  0;
}

double  CStep::Value( double t )
{
   return  A * Rect( ( t - T ) / T );
}