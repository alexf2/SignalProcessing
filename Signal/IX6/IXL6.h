// IXL6.h : Declaration of the CIXL6

#ifndef __IXL6_H_
#define __IXL6_H_

#include "resource.h"       // main symbols
#include "NewDoc.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL6
class ATL_NO_VTABLE CIXL6 : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CIXL6, &CLSID_IXL6>,
	public ISupportErrorInfo,
	public IDispatchImpl<IIXL6, &IID_IIXL6, &LIBID_IX6Lib>
{
public:
	CIXL6()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_IXL6)
DECLARE_NOT_AGGREGATABLE(CIXL6)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CIXL6)
	COM_INTERFACE_ENTRY(IIXL6)
	COM_INTERFACE_ENTRY(IDispatch)
	COM_INTERFACE_ENTRY(ISupportErrorInfo)
END_COM_MAP()

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IIXL6
public:
	STDMETHOD(FetchResults)( SAFEARRAY** arrRes );
	STDMETHOD(OnBack)();
	STDMETHOD(OnDirect)(/*[in]*/ double AgP, /*[in]*/ double ToP, /*[in]*/ double SgP);
	STDMETHOD(OnSignalC)(/*[in]*/double Ag, /*[in]*/double Tog, /*[in]*/double Sg);
	STDMETHOD(OnNet)(/*[in]*/double T, /*[in]*/long N);

private:
  CNewDoc m_doc;
};

#endif //__IXL6_H_
