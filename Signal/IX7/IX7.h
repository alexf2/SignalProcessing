/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 5.01.0164 */
/* at Wed Dec 01 20:33:15 1999
 */
/* Compiler settings for G:\WORK\Signal\IX7\IX7.idl:
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

#ifndef __IX7_h__
#define __IX7_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

#ifndef __IIXL7_FWD_DEFINED__
#define __IIXL7_FWD_DEFINED__
typedef interface IIXL7 IIXL7;
#endif 	/* __IIXL7_FWD_DEFINED__ */


#ifndef __IXL7_FWD_DEFINED__
#define __IXL7_FWD_DEFINED__

#ifdef __cplusplus
typedef class IXL7 IXL7;
#else
typedef struct IXL7 IXL7;
#endif /* __cplusplus */

#endif 	/* __IXL7_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

#ifndef __IIXL7_INTERFACE_DEFINED__
#define __IIXL7_INTERFACE_DEFINED__

/* interface IIXL7 */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_IIXL7;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("8E5CF670-A702-11D3-8E33-00504E02C39D")
    IIXL7 : public IDispatch
    {
    public:
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnNet( 
            /* [in] */ double T,
            /* [in] */ long N) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnSignalB( 
            /* [in] */ double Ag2,
            /* [in] */ double Tog2,
            /* [in] */ double Sg2) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnSignalC( 
            /* [in] */ double Ag1,
            /* [in] */ double Tog1,
            /* [in] */ double Sg1) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnDirect( 
            /* [in] */ double alpha,
            /* [in] */ double step) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnBack( 
            /* [in] */ double alpha,
            /* [in] */ double step) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE Fetch( 
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIXL7Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IIXL7 __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IIXL7 __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IIXL7 __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnNet )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ double T,
            /* [in] */ long N);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnSignalB )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ double Ag2,
            /* [in] */ double Tog2,
            /* [in] */ double Sg2);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnSignalC )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ double Ag1,
            /* [in] */ double Tog1,
            /* [in] */ double Sg1);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnDirect )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ double alpha,
            /* [in] */ double step);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnBack )( 
            IIXL7 __RPC_FAR * This,
            /* [in] */ double alpha,
            /* [in] */ double step);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Fetch )( 
            IIXL7 __RPC_FAR * This,
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);
        
        END_INTERFACE
    } IIXL7Vtbl;

    interface IIXL7
    {
        CONST_VTBL struct IIXL7Vtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIXL7_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIXL7_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIXL7_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIXL7_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IIXL7_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IIXL7_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IIXL7_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IIXL7_OnNet(This,T,N)	\
    (This)->lpVtbl -> OnNet(This,T,N)

#define IIXL7_OnSignalB(This,Ag2,Tog2,Sg2)	\
    (This)->lpVtbl -> OnSignalB(This,Ag2,Tog2,Sg2)

#define IIXL7_OnSignalC(This,Ag1,Tog1,Sg1)	\
    (This)->lpVtbl -> OnSignalC(This,Ag1,Tog1,Sg1)

#define IIXL7_OnDirect(This,alpha,step)	\
    (This)->lpVtbl -> OnDirect(This,alpha,step)

#define IIXL7_OnBack(This,alpha,step)	\
    (This)->lpVtbl -> OnBack(This,alpha,step)

#define IIXL7_Fetch(This,arrRes)	\
    (This)->lpVtbl -> Fetch(This,arrRes)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL7_OnNet_Proxy( 
    IIXL7 __RPC_FAR * This,
    /* [in] */ double T,
    /* [in] */ long N);


void __RPC_STUB IIXL7_OnNet_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL7_OnSignalB_Proxy( 
    IIXL7 __RPC_FAR * This,
    /* [in] */ double Ag2,
    /* [in] */ double Tog2,
    /* [in] */ double Sg2);


void __RPC_STUB IIXL7_OnSignalB_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL7_OnSignalC_Proxy( 
    IIXL7 __RPC_FAR * This,
    /* [in] */ double Ag1,
    /* [in] */ double Tog1,
    /* [in] */ double Sg1);


void __RPC_STUB IIXL7_OnSignalC_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL7_OnDirect_Proxy( 
    IIXL7 __RPC_FAR * This,
    /* [in] */ double alpha,
    /* [in] */ double step);


void __RPC_STUB IIXL7_OnDirect_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL7_OnBack_Proxy( 
    IIXL7 __RPC_FAR * This,
    /* [in] */ double alpha,
    /* [in] */ double step);


void __RPC_STUB IIXL7_OnBack_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL7_Fetch_Proxy( 
    IIXL7 __RPC_FAR * This,
    /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);


void __RPC_STUB IIXL7_Fetch_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIXL7_INTERFACE_DEFINED__ */



#ifndef __IX7Lib_LIBRARY_DEFINED__
#define __IX7Lib_LIBRARY_DEFINED__

/* library IX7Lib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_IX7Lib;

EXTERN_C const CLSID CLSID_IXL7;

#ifdef __cplusplus

class DECLSPEC_UUID("8E5CF671-A702-11D3-8E33-00504E02C39D")
IXL7;
#endif
#endif /* __IX7Lib_LIBRARY_DEFINED__ */

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
