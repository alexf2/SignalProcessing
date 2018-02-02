// IXL8.cpp : Implementation of CIXL8
#include "stdafx.h"
#include "IX8.h"
#include "IXL8.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL8

STDMETHODIMP CIXL8::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_IIXL8
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

STDMETHODIMP CIXL8::OnNet(double T, long N)
{
	if( !m_doc.ReInit(T, N) )
	 {
	   Error( L"Cann't ReInit", 0, NULL, IID_IIXL8, E_FAIL );
	   return E_FAIL;
	 }


	return S_OK;
}

STDMETHODIMP CIXL8::OnSignalB(double Ag1, double Tog1, double Sg1)
{
	m_doc.Ag1 = Ag1;
	m_doc.Tog1 = Tog1;
	m_doc.Sg1 = Sg1;

	m_doc.SignalC();

	return S_OK;
}

STDMETHODIMP CIXL8::OnDirect(long Np)
{
	m_doc.Direct( Np );

	return S_OK;
}

STDMETHODIMP CIXL8::OnBack(double Nm, double Delta)
{
	m_doc.Alpha( Nm, Delta );

	return S_OK;
}

STDMETHODIMP CIXL8::FetchResults( SAFEARRAY** arrRes, VARIANT_BOOL bWhat )
 {
    if( m_doc.SView < 1 ) return E_FAIL;
    if( !arrRes ) return E_POINTER;
	
	DWORD dwSz = (bWhat == VARIANT_TRUE) ? 3:2;

	SAFEARRAYBOUND bnd = { dwSz * m_doc.SView, 0 };
	*arrRes = SafeArrayCreate( VT_R8, 1, &bnd );

    if( !arrRes )
	 {
	   Error( L"Cann't array allocate", 0, NULL, IID_IIXL8, E_FAIL );
	   return E_FAIL;
	 }

	double* pDta;
	HRESULT hr = SafeArrayAccessData( *arrRes, (void**)&pDta );
	if( FAILED(hr) )
	 {
	   SafeArrayDestroy( *arrRes );
	   *arrRes = NULL;
	   Error( L"Cann't array allocate", 0, NULL, IID_IIXL8, hr );
	   return E_FAIL;
	 }

	if( bWhat == VARIANT_FALSE )
	 {
	   double *x = m_doc.XView, *y = m_doc.YexView;
			  
	   for( int i = 0; i < m_doc.SView; ++i, ++x, ++y )
		 *pDta++ = *x, *pDta++ = *y;
	 }
	else
	 {
	   double *x = m_doc.XView, *y = m_doc.YexView,
	       *y2 = m_doc.YapView;
	   for( int i = 0; i < m_doc.SView; ++i, ++x, ++y, ++y2 )
		 *pDta++ = *x, *pDta++ = *y, *pDta++ = *y2;

	 }

	SafeArrayUnaccessData( *arrRes );

	return S_OK;
 }

