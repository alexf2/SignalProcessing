#include  "StdAfx.h"
#include "Math_01.h"

int     CImpulse::Delta( double t )
{
   if( To == t )
     return  1;

   return  0;
}

double  CImpulse::Value( double t )
{
   return  A * Delta( t );
}