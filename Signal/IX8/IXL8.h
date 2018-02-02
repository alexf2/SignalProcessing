// IXL8.h : Declaration of the CIXL8

#ifndef __IXL8_H_
#define __IXL8_H_

#include "resource.h"       // main symbols
#include "newdoc.h"

/////////////////////////////////////////////////////////////////////////////
// CIXL8
class ATL_NO_VTABLE CIXL8 : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CIXL8, &CLSID_IXL8>,
	public ISupportErrorInfo,
	public IDispatchImpl<IIXL8, &IID_IIXL8, &LIBID_IX8Lib>
{
public:
	CIXL8()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_IXL8)
DECLARE_NOT_AGGREGATABLE(CIXL8)

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CIXL8)
	COM_INTERFACE_ENTRY(IIXL8)
	COM_INTERFACE_ENTRY(IDispatch)
	COM_INTERFACE_ENTRY(ISupportErrorInfo)
END_COM_MAP()

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IIXL8
public:
	STDMETHOD(FetchResults)( SAFEARRAY** arrRes, VARIANT_BOOL bWhat );
	STDMETHOD(OnBack)(/*[in]*/double Nm, /*[in]*/double Delta);
	STDMETHOD(OnDirect)(/*[in]*/long Np);
	STDMETHOD(OnSignalB)(/*[in]*/double Ag1, /*[in]*/double Tog1, /*[in]*/double Sg1);
	STDMETHOD(OnNet)(/*[in]*/double T, /*[in]*/long N);
private:
  CNewDoc m_doc;
};

#endif //__IXL8_H_
