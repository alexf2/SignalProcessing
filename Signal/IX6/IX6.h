/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 5.01.0164 */
/* at Wed Dec 01 20:32:20 1999
 */
/* Compiler settings for G:\WORK\Signal\IX6\IX6.idl:
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

#ifndef __IX6_h__
#define __IX6_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

#ifndef __IIXL6_FWD_DEFINED__
#define __IIXL6_FWD_DEFINED__
typedef interface IIXL6 IIXL6;
#endif 	/* __IIXL6_FWD_DEFINED__ */


#ifndef __IXL6_FWD_DEFINED__
#define __IXL6_FWD_DEFINED__

#ifdef __cplusplus
typedef class IXL6 IXL6;
#else
typedef struct IXL6 IXL6;
#endif /* __cplusplus */

#endif 	/* __IXL6_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

#ifndef __IIXL6_INTERFACE_DEFINED__
#define __IIXL6_INTERFACE_DEFINED__

/* interface IIXL6 */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_IIXL6;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("DBAE610D-A64E-11D3-8E30-00504E02C39D")
    IIXL6 : public IDispatch
    {
    public:
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnNet( 
            /* [in] */ double T,
            /* [in] */ long N) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnSignalC( 
            /* [in] */ double Ag,
            /* [in] */ double Tog,
            /* [in] */ double Sg) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnDirect( 
            /* [in] */ double AgP,
            /* [in] */ double ToP,
            /* [in] */ double SgP) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnBack( void) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE FetchResults( 
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIXL6Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IIXL6 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IIXL6 __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IIXL6 __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IIXL6 __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IIXL6 __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IIXL6 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IIXL6 __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnNet )( 
            IIXL6 __RPC_FAR * This,
            /* [in] */ double T,
            /* [in] */ long N);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnSignalC )( 
            IIXL6 __RPC_FAR * This,
            /* [in] */ double Ag,
            /* [in] */ double Tog,
            /* [in] */ double Sg);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnDirect )( 
            IIXL6 __RPC_FAR * This,
            /* [in] */ double AgP,
            /* [in] */ double ToP,
            /* [in] */ double SgP);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnBack )( 
            IIXL6 __RPC_FAR * This);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *FetchResults )( 
            IIXL6 __RPC_FAR * This,
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);
        
        END_INTERFACE
    } IIXL6Vtbl;

    interface IIXL6
    {
        CONST_VTBL struct IIXL6Vtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIXL6_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIXL6_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIXL6_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIXL6_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IIXL6_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IIXL6_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IIXL6_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IIXL6_OnNet(This,T,N)	\
    (This)->lpVtbl -> OnNet(This,T,N)

#define IIXL6_OnSignalC(This,Ag,Tog,Sg)	\
    (This)->lpVtbl -> OnSignalC(This,Ag,Tog,Sg)

#define IIXL6_OnDirect(This,AgP,ToP,SgP)	\
    (This)->lpVtbl -> OnDirect(This,AgP,ToP,SgP)

#define IIXL6_OnBack(This)	\
    (This)->lpVtbl -> OnBack(This)

#define IIXL6_FetchResults(This,arrRes)	\
    (This)->lpVtbl -> FetchResults(This,arrRes)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL6_OnNet_Proxy( 
    IIXL6 __RPC_FAR * This,
    /* [in] */ double T,
    /* [in] */ long N);


void __RPC_STUB IIXL6_OnNet_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL6_OnSignalC_Proxy( 
    IIXL6 __RPC_FAR * This,
    /* [in] */ double Ag,
    /* [in] */ double Tog,
    /* [in] */ double Sg);


void __RPC_STUB IIXL6_OnSignalC_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL6_OnDirect_Proxy( 
    IIXL6 __RPC_FAR * This,
    /* [in] */ double AgP,
    /* [in] */ double ToP,
    /* [in] */ double SgP);


void __RPC_STUB IIXL6_OnDirect_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL6_OnBack_Proxy( 
    IIXL6 __RPC_FAR * This);


void __RPC_STUB IIXL6_OnBack_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL6_FetchResults_Proxy( 
    IIXL6 __RPC_FAR * This,
    /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);


void __RPC_STUB IIXL6_FetchResults_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIXL6_INTERFACE_DEFINED__ */



#ifndef __IX6Lib_LIBRARY_DEFINED__
#define __IX6Lib_LIBRARY_DEFINED__

/* library IX6Lib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_IX6Lib;

EXTERN_C const CLSID CLSID_IXL6;

#ifdef __cplusplus

class DECLSPEC_UUID("DBAE610E-A64E-11D3-8E30-00504E02C39D")
IXL6;
#endif
#endif /* __IX6Lib_LIBRARY_DEFINED__ */

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
