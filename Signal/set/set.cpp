// set.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "windows.h"

#include <list>
#include <algorithm>
using namespace std;

struct CXYHold
 {
   CXYHold( )
	{	  
	  XY = 0;
	}      
   bool operator==( CXYHold& r1 ); 

   int XY;
 };

bool operator==( const CXYHold& r1, const CXYHold& r2 ); 
bool operator==( CXYHold& r1, CXYHold& r2 ); 
bool operator<( const CXYHold& r1, const CXYHold& r2 );

bool operator==( const CXYHold& r1, const CXYHold& r2 )
 {
   
   return r1.XY == r2.XY ;
 }
bool operator<( const CXYHold& r1, const CXYHold& r2 )
 {   
   return r1.XY < r2.XY;
 }

bool CXYHold::operator==( CXYHold& r2 )
 {   
   return XY == r2.XY;
 }

bool operator==( CXYHold& r1, CXYHold& r2 )
 {   
   return r1.XY == r2.XY && r1.XY == r2.XY;
 }

struct TCmp
 {
   bool operator()(CXYHold& r1)
	{
	  return r1.XY == 7;
	}
 };

int main(int argc, char* argv[])
 {
	
   list<CXYHold> ss;

   CXYHold x1, x2, x3, x4, x5;
   
   x1.XY = 1;
   ss.push_back( x1 );
   x1.XY = 6;
   ss.push_back( x1 );
   x1.XY = 7;
   ss.push_back( x1 );
   x1.XY = 7;
   ss.push_back( x1 );
   x1.XY = 8;
   ss.push_back( x1 );
   x1.XY = 2;
   ss.push_back( x1 );
   x1.XY = 7;
   ss.push_back( x1 );
   x1.XY = 1;
   ss.push_back( x1 );

   list<CXYHold>::iterator it1( ss.begin() );
   list<CXYHold>::iterator it2( ss.end() );
   for( ; it1 != it2; ++it1 )
	{
	  char cc[25];
	  sprintf( cc, "%d\n", it1->XY );
	  OutputDebugString( cc );
	}

   TCmp pr;
   //ss.remove_if( pr );
   remove_if( ss.begin(), ss.end(), pr );

   it1 = ss.begin();
   it2 = ss.end();
   for( ; it1 != it2; ++it1 )
	{
	  char cc[25];
	  sprintf( cc, "%d\n", it1->XY );
	  OutputDebugString( cc );
	}


   return 0;
 }

