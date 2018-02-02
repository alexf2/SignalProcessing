// SHlp.h : Declaration of the CSHlp

#ifndef __SHLP_H_
#define __SHLP_H_

#include "resource.h"       // main symbols
#import "..\\BMPS\\cgitem.dll" raw_native_types , named_guids, no_namespace, no_implementation

/////////////////////////////////////////////////////////////////////////////
// CSHlp
class ATL_NO_VTABLE CSHlp : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CSHlp, &CLSID_SHlp>,
	public ISupportErrorInfo,
	public IDispatchImpl<ISHlp, &IID_ISHlp, &LIBID_SIGHELPERLib>
{
public:
	CSHlp()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_SHLP)
DECLARE_NOT_AGGREGATABLE(CSHlp)
DECLARE_CLASSFACTORY_SINGLETON( CSHlp )

DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CSHlp)
	COM_INTERFACE_ENTRY(ISHlp)
	COM_INTERFACE_ENTRY(IDispatch)
	COM_INTERFACE_ENTRY(ISupportErrorInfo)
END_COM_MAP()

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// ISHlp
public:
	STDMETHOD(InsertPoints)(/*[in]*/ VARIANT arrGenerated, /*[in]*/ VARIANT arrSpec, SAFEARRAY** arrRes);
};

struct CXYHold
 {
   CXYHold( XYPoint* xy )
	{	  
	  XY = xy;
	}      

   XYPoint* XY;
 };


inline bool operator<( const CXYHold& r1, const CXYHold& r2 )
 {   
   return r1.XY->x < r2.XY->x;
 }


#endif //__SHLP_H_
