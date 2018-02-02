// IXL6.cpp : Implementation of CIXL6
#include "stdafx.h"
#include "IX6.h"
#include "IXL6.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL6

STDMETHODIMP CIXL6::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_IIXL6
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

STDMETHODIMP CIXL6::OnNet(double T, long N)
{
	if( !m_doc.ReInit(T, N) )
	 {
	   Error( L"Cann't ReInit", 0, NULL, IID_IIXL6, E_FAIL );
	   return E_FAIL;
	 }

	return S_OK;
}

STDMETHODIMP CIXL6::OnSignalC(double Ag, double Tog, double Sg)
{
	m_doc.Ag  = Ag;
	m_doc.Tog = Tog;
	m_doc.Sg  = Sg;

	m_doc.SignalC();

	return S_OK;
}

STDMETHODIMP CIXL6::OnDirect(double AgP, double ToP, double SgP)
{
	m_doc.Direct( AgP, ToP, SgP );

	return S_OK;
}

STDMETHODIMP CIXL6::OnBack()
{
	m_doc.Reverse();

	return S_OK;
}
//
STDMETHODIMP CIXL6::FetchResults( SAFEARRAY** arrRes )
 {
   if( m_doc.SView < 1 ) return E_FAIL;
   if( !arrRes ) return E_POINTER;
	

	SAFEARRAYBOUND bnd = { 3 * m_doc.SView, 0 };
	*arrRes = SafeArrayCreate( VT_R8, 1, &bnd );

    if( !arrRes )
	 {
	   Error( L"Cann't array allocate", 0, NULL, IID_IIXL6, E_FAIL );
	   return E_FAIL;
	 }

	double* pDta;
	HRESULT hr = SafeArrayAccessData( *arrRes, (void**)&pDta );
	if( FAILED(hr) )
	 {
	   SafeArrayDestroy( *arrRes );
	   *arrRes = NULL;
	   Error( L"Cann't array allocate", 0, NULL, IID_IIXL6, hr );
	   return E_FAIL;
	 }

	double *x = m_doc.XView, *y = m_doc.YexView,
	       *y2 = m_doc.YapView;
	for( int i = 0; i < m_doc.SView; ++i, ++x, ++y, ++y2 )
	  *pDta++ = *x, *pDta++ = *y, *pDta++ = *y2;

	SafeArrayUnaccessData( *arrRes );

	return S_OK;
 }
