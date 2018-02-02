// IXL7.h : Declaration of the CIXL7

#ifndef __IXL7_H_
#define __IXL7_H_

#include "resource.h"       // main symbols
#include "newdoc.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL7
class ATL_NO_VTABLE CIXL7 : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CIXL7, &CLSID_IXL7>,
	public ISupportErrorInfo,
	public IDispatchImpl<IIXL7, &IID_IIXL7, &LIBID_IX7Lib>
{
public:
	CIXL7()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_IXL7)
DECLARE_NOT_AGGREGATABLE(CIXL7)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CIXL7)
	COM_INTERFACE_ENTRY(IIXL7)
	COM_INTERFACE_ENTRY(IDispatch)
	COM_INTERFACE_ENTRY(ISupportErrorInfo)
END_COM_MAP()

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IIXL7
public:
	STDMETHOD(Fetch)( SAFEARRAY** arrRes );
	STDMETHOD(OnBack)(/*[in]*/double alpha, /*[in]*/double step);
	STDMETHOD(OnDirect)(/*[in]*/double alpha, /*[in]*/double step);
	STDMETHOD(OnSignalC)(/*[in]*/double Ag1, /*[in]*/double Tog1, /*[in]*/double Sg1);
	STDMETHOD(OnSignalB)(/*[in]*/double Ag2, /*[in]*/double Tog2, /*[in]*/double Sg2);
	STDMETHOD(OnNet)(/*[in]*/double T, /*[in]*/long N);

private:
  CNewDoc m_doc;
};

#endif //__IXL7_H_
