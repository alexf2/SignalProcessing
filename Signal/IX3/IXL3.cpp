// IXL3.cpp : Implementation of CIXL3
#include "stdafx.h"
#include "IX3.h"
#include "IXL3.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL3

STDMETHODIMP CIXL3::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_IIXL3
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

STDMETHODIMP CIXL3::OnNet(double T, long N)
{
  return m_doc.ReInit( T, N ) ? S_OK:E_FAIL;
}

STDMETHODIMP CIXL3::OnSignalB(double As, double Ts)
{
  m_doc.As = As, m_doc.Ts = Ts;
  m_doc.SignalB();
  return S_OK;
}

STDMETHODIMP CIXL3::OnSignalC(double Ag, double To, double Sg)
{
	m_doc.Ag = Ag, m_doc.Tog = To, m_doc.Sg = Sg;
    m_doc.SignalC();
	return S_OK;
}

STDMETHODIMP CIXL3::Build(VARIANT_BOOL vDirect)
{
	if( vDirect == VARIANT_TRUE ) m_doc.Direct();
	else m_doc.Reverse();

	return S_OK;
}

STDMETHODIMP CIXL3::FetchResult( SAFEARRAY** arrRes )
 {
	if( m_doc.SView < 1 ) return E_FAIL;
	if( !arrRes ) return E_POINTER;

	

	SAFEARRAYBOUND bnd = { 3 * m_doc.SView, 0 };
	*arrRes = SafeArrayCreate( VT_R8, 1, &bnd );

    if( !arrRes )
	 {
	   Error( L"Cann't array allocate", 0, NULL, IID_IIXL3, E_FAIL );
	   return E_FAIL;
	 }


	double* pDta;
	HRESULT hr = SafeArrayAccessData( *arrRes, (void**)&pDta );

	double *x = m_doc.XView, *y = m_doc.YexView,
	       *y2 = m_doc.YapView;
	for( int i = 0; i < m_doc.SView; ++i, ++x, ++y, ++y2 )
	  *pDta++ = *x, *pDta++ = *y, *pDta++ = *y2;

	SafeArrayUnaccessData( *arrRes );


	return S_OK;
 }
