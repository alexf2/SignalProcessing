/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 5.01.0164 */
/* at Wed Dec 01 20:31:24 1999
 */
/* Compiler settings for G:\WORK\Signal\IX4\IX4.idl:
    Oicf (OptLev=i2), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
*/
//@@MIDL_FILE_HEADING(  )


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 440
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __RPCNDR_H_VERSION__
#error this stub requires an updated version of <rpcndr.h>
#endif // __RPCNDR_H_VERSION__

#ifndef COM_NO_WINDOWS_H
#include "windows.h"
#include "ole2.h"
#endif /*COM_NO_WINDOWS_H*/

#ifndef __IX4_h__
#define __IX4_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

#ifndef __IIXL4_FWD_DEFINED__
#define __IIXL4_FWD_DEFINED__
typedef interface IIXL4 IIXL4;
#endif 	/* __IIXL4_FWD_DEFINED__ */


#ifndef __IXL4_FWD_DEFINED__
#define __IXL4_FWD_DEFINED__

#ifdef __cplusplus
typedef class IXL4 IXL4;
#else
typedef struct IXL4 IXL4;
#endif /* __cplusplus */

#endif 	/* __IXL4_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

#ifndef __IIXL4_INTERFACE_DEFINED__
#define __IIXL4_INTERFACE_DEFINED__

/* interface IIXL4 */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_IIXL4;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("4CE1B782-A4D0-11D3-8E2E-00504E02C39D")
    IIXL4 : public IDispatch
    {
    public:
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE ReInit( 
            /* [in] */ double A,
            /* [in] */ double B,
            /* [in] */ long N) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnSignalC( 
            /* [in] */ double SgU,
            /* [in] */ double SgH) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnDirect( void) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE FetchResults( 
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIXL4Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IIXL4 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IIXL4 __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IIXL4 __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IIXL4 __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IIXL4 __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IIXL4 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IIXL4 __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ReInit )( 
            IIXL4 __RPC_FAR * This,
            /* [in] */ double A,
            /* [in] */ double B,
            /* [in] */ long N);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnSignalC )( 
            IIXL4 __RPC_FAR * This,
            /* [in] */ double SgU,
            /* [in] */ double SgH);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnDirect )( 
            IIXL4 __RPC_FAR * This);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *FetchResults )( 
            IIXL4 __RPC_FAR * This,
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);
        
        END_INTERFACE
    } IIXL4Vtbl;

    interface IIXL4
    {
        CONST_VTBL struct IIXL4Vtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIXL4_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIXL4_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIXL4_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIXL4_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IIXL4_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IIXL4_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IIXL4_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IIXL4_ReInit(This,A,B,N)	\
    (This)->lpVtbl -> ReInit(This,A,B,N)

#define IIXL4_OnSignalC(This,SgU,SgH)	\
    (This)->lpVtbl -> OnSignalC(This,SgU,SgH)

#define IIXL4_OnDirect(This)	\
    (This)->lpVtbl -> OnDirect(This)

#define IIXL4_FetchResults(This,arrRes)	\
    (This)->lpVtbl -> FetchResults(This,arrRes)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL4_ReInit_Proxy( 
    IIXL4 __RPC_FAR * This,
    /* [in] */ double A,
    /* [in] */ double B,
    /* [in] */ long N);


void __RPC_STUB IIXL4_ReInit_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL4_OnSignalC_Proxy( 
    IIXL4 __RPC_FAR * This,
    /* [in] */ double SgU,
    /* [in] */ double SgH);


void __RPC_STUB IIXL4_OnSignalC_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL4_OnDirect_Proxy( 
    IIXL4 __RPC_FAR * This);


void __RPC_STUB IIXL4_OnDirect_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL4_FetchResults_Proxy( 
    IIXL4 __RPC_FAR * This,
    /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);


void __RPC_STUB IIXL4_FetchResults_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIXL4_INTERFACE_DEFINED__ */



#ifndef __IX4Lib_LIBRARY_DEFINED__
#define __IX4Lib_LIBRARY_DEFINED__

/* library IX4Lib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_IX4Lib;

EXTERN_C const CLSID CLSID_IXL4;

#ifdef __cplusplus

class DECLSPEC_UUID("4CE1B783-A4D0-11D3-8E2E-00504E02C39D")
IXL4;
#endif
#endif /* __IX4Lib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  LPSAFEARRAY_UserSize(     unsigned long __RPC_FAR *, unsigned long            , LPSAFEARRAY __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  LPSAFEARRAY_UserMarshal(  unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, LPSAFEARRAY __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  LPSAFEARRAY_UserUnmarshal(unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, LPSAFEARRAY __RPC_FAR * ); 
void                      __RPC_USER  LPSAFEARRAY_UserFree(     unsigned long __RPC_FAR *, LPSAFEARRAY __RPC_FAR * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif
