/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 5.01.0164 */
/* at Wed Dec 01 20:30:09 1999
 */
/* Compiler settings for G:\WORK\Signal\IX3\IX3.idl:
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

#ifndef __IX3_h__
#define __IX3_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

#ifndef __IIXL3_FWD_DEFINED__
#define __IIXL3_FWD_DEFINED__
typedef interface IIXL3 IIXL3;
#endif 	/* __IIXL3_FWD_DEFINED__ */


#ifndef __IXL3_FWD_DEFINED__
#define __IXL3_FWD_DEFINED__

#ifdef __cplusplus
typedef class IXL3 IXL3;
#else
typedef struct IXL3 IXL3;
#endif /* __cplusplus */

#endif 	/* __IXL3_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

#ifndef __IIXL3_INTERFACE_DEFINED__
#define __IIXL3_INTERFACE_DEFINED__

/* interface IIXL3 */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_IIXL3;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("1611B86D-A458-11D3-8E2C-00504E02C39D")
    IIXL3 : public IDispatch
    {
    public:
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnNet( 
            /* [in] */ double T,
            /* [in] */ long N) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnSignalB( 
            /* [in] */ double As,
            /* [in] */ double Ts) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnSignalC( 
            /* [in] */ double Ag,
            /* [in] */ double To,
            /* [in] */ double Sg) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE Build( 
            /* [in] */ VARIANT_BOOL vDirect) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE FetchResult( 
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIXL3Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IIXL3 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IIXL3 __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IIXL3 __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IIXL3 __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IIXL3 __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IIXL3 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IIXL3 __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnNet )( 
            IIXL3 __RPC_FAR * This,
            /* [in] */ double T,
            /* [in] */ long N);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnSignalB )( 
            IIXL3 __RPC_FAR * This,
            /* [in] */ double As,
            /* [in] */ double Ts);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnSignalC )( 
            IIXL3 __RPC_FAR * This,
            /* [in] */ double Ag,
            /* [in] */ double To,
            /* [in] */ double Sg);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Build )( 
            IIXL3 __RPC_FAR * This,
            /* [in] */ VARIANT_BOOL vDirect);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *FetchResult )( 
            IIXL3 __RPC_FAR * This,
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);
        
        END_INTERFACE
    } IIXL3Vtbl;

    interface IIXL3
    {
        CONST_VTBL struct IIXL3Vtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIXL3_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIXL3_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIXL3_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIXL3_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IIXL3_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IIXL3_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IIXL3_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IIXL3_OnNet(This,T,N)	\
    (This)->lpVtbl -> OnNet(This,T,N)

#define IIXL3_OnSignalB(This,As,Ts)	\
    (This)->lpVtbl -> OnSignalB(This,As,Ts)

#define IIXL3_OnSignalC(This,Ag,To,Sg)	\
    (This)->lpVtbl -> OnSignalC(This,Ag,To,Sg)

#define IIXL3_Build(This,vDirect)	\
    (This)->lpVtbl -> Build(This,vDirect)

#define IIXL3_FetchResult(This,arrRes)	\
    (This)->lpVtbl -> FetchResult(This,arrRes)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL3_OnNet_Proxy( 
    IIXL3 __RPC_FAR * This,
    /* [in] */ double T,
    /* [in] */ long N);


void __RPC_STUB IIXL3_OnNet_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL3_OnSignalB_Proxy( 
    IIXL3 __RPC_FAR * This,
    /* [in] */ double As,
    /* [in] */ double Ts);


void __RPC_STUB IIXL3_OnSignalB_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL3_OnSignalC_Proxy( 
    IIXL3 __RPC_FAR * This,
    /* [in] */ double Ag,
    /* [in] */ double To,
    /* [in] */ double Sg);


void __RPC_STUB IIXL3_OnSignalC_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL3_Build_Proxy( 
    IIXL3 __RPC_FAR * This,
    /* [in] */ VARIANT_BOOL vDirect);


void __RPC_STUB IIXL3_Build_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL3_FetchResult_Proxy( 
    IIXL3 __RPC_FAR * This,
    /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);


void __RPC_STUB IIXL3_FetchResult_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIXL3_INTERFACE_DEFINED__ */



#ifndef __IX3Lib_LIBRARY_DEFINED__
#define __IX3Lib_LIBRARY_DEFINED__

/* library IX3Lib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_IX3Lib;

EXTERN_C const CLSID CLSID_IXL3;

#ifdef __cplusplus

class DECLSPEC_UUID("1611B86E-A458-11D3-8E2C-00504E02C39D")
IXL3;
#endif
#endif /* __IX3Lib_LIBRARY_DEFINED__ */

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
