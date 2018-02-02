// IXL4.cpp : Implementation of CIXL4
#include "stdafx.h"
#include "IX4.h"
#include "IXL4.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL4

STDMETHODIMP CIXL4::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_IIXL4
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

STDMETHODIMP CIXL4::ReInit( double A, double B, long N )
 {
   if( !m_doc.ReInit(A, B, N) ) 
	{
	  Error( L"Cann't ReInit", 0, NULL, IID_IIXL4, E_FAIL );
	  return E_FAIL;
	}
   return S_OK;
 }

STDMETHODIMP CIXL4::OnSignalC( double SgU, double SgH )
 {
   m_doc.SgU = SgU, m_doc.SgH = SgH;
   m_doc.Signal();
   return S_OK;
 }

STDMETHODIMP CIXL4::OnDirect()
 {
	m_doc.Procces();

	return S_OK;
 }

STDMETHODIMP CIXL4::FetchResults( SAFEARRAY** arrRes )
 {
	if( !arrRes ) return E_POINTER;
    SAFEARRAYBOUND bnd = { 2 * m_doc.SView, 0 };
	*arrRes = SafeArrayCreate( VT_R8, 1, &bnd );
	if( !*arrRes )
	 {
	   Error( L"Cann't array allocate", 0, NULL, IID_IIXL4, E_FAIL );
	   return E_FAIL;
	 }

	double* pDta;
	HRESULT hr = SafeArrayAccessData( *arrRes, (void**)&pDta );
	if( FAILED(hr) )
	 {
	   Error( L"Cann't access array", 0, NULL, IID_IIXL4, hr );
	   return hr;
	 }

	double *x = m_doc.XView, *y = m_doc.YView;	       
	for( int i = 0; i < m_doc.SView; ++i, ++x, ++y )
	  *pDta++ = *x, *pDta++ = *y;

	SafeArrayUnaccessData( *arrRes );


	return S_OK;
 }
