// IXL4.h : Declaration of the CIXL4

#ifndef __IXL4_H_
#define __IXL4_H_

#include "resource.h"       // main symbols
#include "NEWDOC.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL4
class ATL_NO_VTABLE CIXL4 : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CIXL4, &CLSID_IXL4>,
	public ISupportErrorInfo,
	public IDispatchImpl<IIXL4, &IID_IIXL4, &LIBID_IX4Lib>
{
public:
	CIXL4()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_IXL4)
DECLARE_NOT_AGGREGATABLE(CIXL4)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CIXL4)
	COM_INTERFACE_ENTRY(IIXL4)
	COM_INTERFACE_ENTRY(IDispatch)
	COM_INTERFACE_ENTRY(ISupportErrorInfo)
END_COM_MAP()

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IIXL4
public:
	STDMETHOD(FetchResults)( SAFEARRAY** arrRes );
	STDMETHOD(OnDirect)();
	STDMETHOD(OnSignalC)(/*[in]*/ double SgU, /*[in]*/ double SgH);
	STDMETHOD(ReInit)(/*[in]*/ double A, /*[in]*/ double B, /*[in]*/ long N);

private:
    CNewDoc m_doc;
};

#endif //__IXL4_H_
