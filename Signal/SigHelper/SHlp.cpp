// SHlp.cpp : Implementation of CSHlp
#include "stdafx.h"
#include "SigHelper.h"
#include "SHlp.h"



/////////////////////////////////////////////////////////////////////////////
// CSHlp

STDMETHODIMP CSHlp::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_ISHlp
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

STDMETHODIMP CSHlp::InsertPoints(VARIANT arrGenerated, VARIANT arrSpec, SAFEARRAY** arrRes )
 {
   //DWORD dw1 = arrGenerated->vt&VT_TYPEMASK;
   //DWORD dw2 = arrGenerated->vt&(~VT_TYPEMASK);

   if( arrGenerated.vt != (VT_ARRAY|VT_RECORD) ||
	   arrSpec.vt != (VT_ARRAY|VT_RECORD)
	 ) 
	{
	  Error( L"Нужен массив", 0, NULL, IID_ISHlp, E_INVALIDARG );
	  return E_INVALIDARG;
	}

   if( (arrGenerated.vt & VT_BYREF) != VT_BYREF )
	{
	  int y=1;
	}

   /*IRecordInfo* p = arrGenerated.pRecInfo;
   CComBSTR bs;
   p->GetName( &bs );*/
   

   UINT uiDim1 = SafeArrayGetDim( arrGenerated.parray );
   UINT uiDim2 = SafeArrayGetDim( arrSpec.parray );

   if( uiDim1 != 1 || uiDim2 != 1 )
	{
	  Error( L"Нужен одномерный массив", 0, NULL, IID_ISHlp, E_INVALIDARG );
	  return E_INVALIDARG;
	}

   	  	
   SAFEARRAY& rArrGen = *arrGenerated.parray;
   SAFEARRAY& rArrAdd = *arrSpec.parray;

   long lLo, lHi;
   HRESULT hr = SafeArrayGetLBound( &rArrGen, 1, &lLo );
   if( FAILED(hr) ) 
	{
	  Error( L"Ошибка получения длины массива", 0, NULL, IID_ISHlp, hr );
	  return hr;
	}
   hr = SafeArrayGetUBound( &rArrGen, 1, &lHi );
   if( FAILED(hr) ) 
	{
	  Error( L"Ошибка получения длины массива", 0, NULL, IID_ISHlp, hr );
	  return hr;
	}
   
   UINT uiESize = SafeArrayGetElemsize( &rArrGen );
   
   multiset<CXYHold> setXY;
   int iSz = lHi - lLo + 1;
   if( iSz > 0 )
	{	  
	  char* p;
      SafeArrayAccessData( &rArrGen, (void**)&p );
      for( int i = iSz; i > 0; --i )
	   {	     	     
		 setXY.insert( (XYPoint*)p );
		 //((XYPoint*)p)->x = 199;
		 p += uiESize;
	   }
	  SafeArrayUnaccessData( &rArrGen );
	}

   hr = SafeArrayGetLBound( &rArrAdd, 1, &lLo );
   if( FAILED(hr) ) 
	{
	  Error( L"Ошибка получения длины массива2", 0, NULL, IID_ISHlp, hr );
	  return hr;
	}
   hr = SafeArrayGetUBound( &rArrAdd, 1, &lHi );
   if( FAILED(hr) ) 
	{
	  Error( L"Ошибка получения длины массива2", 0, NULL, IID_ISHlp, hr );
	  return hr;
	}

   iSz = lHi - lLo + 1;
   if( iSz > 0 )
	{	  
	  char* p;
      SafeArrayAccessData( &rArrAdd, (void**)&p );
      for( int i = iSz; i > 0; --i )
	   {	     
	     setXY.insert( (XYPoint*)p );
		 p += uiESize;
	   }
	  SafeArrayUnaccessData( &rArrAdd );
	}
//return S_OK;

   multiset<CXYHold>::iterator it1( setXY.begin() ); 
   multiset<CXYHold>::iterator it2( setXY.end() ); 
   for( ; it1 != it2; )
	{
      multiset<CXYHold>::iterator it3 = it1;
	  multiset<CXYHold>::iterator it4 = it1;
	  ++it4;
	  while( it4 != it2 && it4->XY->x == it1->XY->x && it4->XY->y == it1->XY->y )
	    it3 = it4++;
	  if( it3 == it1 ) 
	   {
	     ++it1;
	     continue;
	   }
      it1 = setXY.erase( it1, --it3 );
	}

   uiESize = sizeof(XYPoint);

   if( setXY.size() > 0 )
	{
	  SafeArrayGetLBound( &rArrGen, 1, &lLo );

	  //SAFEARRAYBOUND bnd = { setXY.size(), lLo };

	  //VARIANT* arrRes_ = arrRes;

	  //VariantClear( arrRes );
	  hr = SafeArrayAllocDescriptor( 1, arrRes );
	  if( FAILED(hr) ) 
	   {
		 Error( L"Ошибка создания массива", 0, NULL, IID_ISHlp, hr );
		 return hr;
	   }
	  (*arrRes)->fFeatures = FADF_RECORD;
	  //arrRes_->vt = VT_ARRAY|VT_RECORD;
	  //(*arrRes)->cbElements = uiESize;
	  (*arrRes)->cbElements = sizeof(XYPoint);
	  (*arrRes)->rgsabound[0].cElements = setXY.size();
	  (*arrRes)->rgsabound[0].lLbound  = lLo;
	  hr = SafeArrayAllocData( *arrRes );
	  //hr = arrRes->parray = SafeArrayCreate( VT_RECORD, 1, &bnd );
	        	  
      //hr = SafeArrayRedim( &rArrGen, &bnd );
	  if( FAILED(hr) ) 
	   {
		 Error( L"Ошибка изменения массива", 0, NULL, IID_ISHlp, hr );
		 SafeArrayDestroyDescriptor( *arrRes );
		 *arrRes = NULL;
		 //arrRes_->vt = VT_EMPTY;
		 return hr;
	   }

      it1 = setXY.begin(); 
      it2 = setXY.end();

	  char* p;
	  hr = SafeArrayAccessData( *arrRes, (void**)&p );
	  if( FAILED(hr) ) 
	   {
		 Error( L"Ошибка доступа к массиву", 0, NULL, IID_ISHlp, hr );
		 SafeArrayDestroyData( *arrRes );
		 SafeArrayDestroyDescriptor( *arrRes );
		 *arrRes = NULL;
		 //arrRes_->vt = VT_EMPTY;
		 return hr;
	   }

	  int ii = 0;
	  for( ; it1 != it2; ++it1, ++ii )
	   {
         ((XYPoint2*)p)->x = it1->XY->x;
		 ((XYPoint2*)p)->y = it1->XY->y;
		 ((XYPoint2*)p)->b = it1->XY->b;
	     //((XYPoint2*)p)->x = ii;
		 //((XYPoint2*)p)->y = ii*ii;
		 //((XYPoint2*)p)->b = VARIANT_TRUE;
	     p += sizeof(XYPoint2);
	   }
	  SafeArrayUnaccessData( *arrRes );
	}
   
      
   return S_OK;
 }

