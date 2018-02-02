// IXL7.cpp : Implementation of CIXL7
#include "stdafx.h"
#include "IX7.h"
#include "IXL7.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL7

STDMETHODIMP CIXL7::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_IIXL7
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

STDMETHODIMP CIXL7::OnNet(double T, long N)
 {
   if( !m_doc.ReInit(T, N) )
	 {
	   Error( L"Cann't ReInit", 0, NULL, IID_IIXL7, E_FAIL );
	   return E_FAIL;
	 }

   return S_OK;
 }

STDMETHODIMP CIXL7::OnSignalB(double Ag2, double Tog2, double Sg2)
{
	m_doc.Ag2  = Ag2;
	m_doc.Tog2 = Tog2;
	m_doc.Sg2  = Sg2;

	return S_OK;
}

STDMETHODIMP CIXL7::OnSignalC(double Ag1, double Tog1, double Sg1)
{
	m_doc.Ag1  = Ag1;
	m_doc.Tog1 = Tog1;
	m_doc.Sg1  = Sg1;

	return S_OK;
}

STDMETHODIMP CIXL7::OnDirect(double alpha, double step)
{
	m_doc.Direct( alpha, step );

	return S_OK;
}

STDMETHODIMP CIXL7::OnBack(double alpha, double step)
{
	m_doc.Alpha    ( alpha, step );

	return S_OK;
}

STDMETHODIMP CIXL7::Fetch( SAFEARRAY** arrRes )
{
   if( m_doc.SView < 1 ) return E_FAIL;
   if( !arrRes ) return E_POINTER;
	

	SAFEARRAYBOUND bnd = { 2 * m_doc.SView, 0 };
	*arrRes = SafeArrayCreate( VT_R8, 1, &bnd );

    if( !arrRes )
	 {
	   Error( L"Cann't array allocate", 0, NULL, IID_IIXL7, E_FAIL );
	   return E_FAIL;
	 }

	double* pDta;
	HRESULT hr = SafeArrayAccessData( *arrRes, (void**)&pDta );
	if( FAILED(hr) )
	 {
	   SafeArrayDestroy( *arrRes );
	   *arrRes = NULL;
	   Error( L"Cann't array allocate", 0, NULL, IID_IIXL7, hr );
	   return E_FAIL;
	 }

	double *x = m_doc.XView, *y = m_doc.YexView;
	       
	for( int i = 0; i < m_doc.SView; ++i, ++x, ++y )
	  *pDta++ = *x, *pDta++ = *y;

	SafeArrayUnaccessData( *arrRes );

	return S_OK;

}
