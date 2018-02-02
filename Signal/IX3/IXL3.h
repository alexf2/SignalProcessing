// IXL3.h : Declaration of the CIXL3

#ifndef __IXL3_H_
#define __IXL3_H_

#include "resource.h"       // main symbols
#include "NewDoc.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL3
class ATL_NO_VTABLE CIXL3 : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CIXL3, &CLSID_IXL3>,
	public ISupportErrorInfo,
	public IDispatchImpl<IIXL3, &IID_IIXL3, &LIBID_IX3Lib>
{
public:
	CIXL3()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_IXL3)
DECLARE_NOT_AGGREGATABLE(CIXL3)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CIXL3)
	COM_INTERFACE_ENTRY(IIXL3)
	COM_INTERFACE_ENTRY(IDispatch)
	COM_INTERFACE_ENTRY(ISupportErrorInfo)
END_COM_MAP()

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IIXL3
public:
	STDMETHOD(FetchResult)( SAFEARRAY** arrRes );
	STDMETHOD(Build)(/*[in]*/ VARIANT_BOOL vDirect);
	STDMETHOD(OnSignalC)(/*[in]*/ double Ag, /*[in]*/ double To, /*[in]*/ double Sg);
	STDMETHOD(OnSignalB)(/*[in]*/ double As, /*[in]*/ double Ts);
	STDMETHOD(OnNet)(/*[in]*/ double T, /*[in]*/ long N);

private:
   CNewDoc m_doc;
};

#endif //__IXL3_H_
