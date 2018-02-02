/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 5.01.0164 */
/* at Wed Dec 01 20:34:13 1999
 */
/* Compiler settings for G:\WORK\Signal\IX8\IX8.idl:
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

#ifndef __IX8_h__
#define __IX8_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

#ifndef __IIXL8_FWD_DEFINED__
#define __IIXL8_FWD_DEFINED__
typedef interface IIXL8 IIXL8;
#endif 	/* __IIXL8_FWD_DEFINED__ */


#ifndef __IXL8_FWD_DEFINED__
#define __IXL8_FWD_DEFINED__

#ifdef __cplusplus
typedef class IXL8 IXL8;
#else
typedef struct IXL8 IXL8;
#endif /* __cplusplus */

#endif 	/* __IXL8_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

#ifndef __IIXL8_INTERFACE_DEFINED__
#define __IIXL8_INTERFACE_DEFINED__

/* interface IIXL8 */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_IIXL8;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("192B3ACD-A76D-11D3-8E34-00504E02C39D")
    IIXL8 : public IDispatch
    {
    public:
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnNet( 
            /* [in] */ double T,
            /* [in] */ long N) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnSignalB( 
            /* [in] */ double Ag1,
            /* [in] */ double Tog1,
            /* [in] */ double Sg1) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnDirect( 
            /* [in] */ long Np) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE OnBack( 
            /* [in] */ double Nm,
            /* [in] */ double Delta) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE FetchResults( 
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes,
            /* [in] */ VARIANT_BOOL bWhat) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IIXL8Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IIXL8 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IIXL8 __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IIXL8 __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IIXL8 __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IIXL8 __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IIXL8 __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IIXL8 __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnNet )( 
            IIXL8 __RPC_FAR * This,
            /* [in] */ double T,
            /* [in] */ long N);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnSignalB )( 
            IIXL8 __RPC_FAR * This,
            /* [in] */ double Ag1,
            /* [in] */ double Tog1,
            /* [in] */ double Sg1);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnDirect )( 
            IIXL8 __RPC_FAR * This,
            /* [in] */ long Np);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *OnBack )( 
            IIXL8 __RPC_FAR * This,
            /* [in] */ double Nm,
            /* [in] */ double Delta);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *FetchResults )( 
            IIXL8 __RPC_FAR * This,
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes,
            /* [in] */ VARIANT_BOOL bWhat);
        
        END_INTERFACE
    } IIXL8Vtbl;

    interface IIXL8
    {
        CONST_VTBL struct IIXL8Vtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IIXL8_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IIXL8_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IIXL8_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IIXL8_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IIXL8_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IIXL8_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IIXL8_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IIXL8_OnNet(This,T,N)	\
    (This)->lpVtbl -> OnNet(This,T,N)

#define IIXL8_OnSignalB(This,Ag1,Tog1,Sg1)	\
    (This)->lpVtbl -> OnSignalB(This,Ag1,Tog1,Sg1)

#define IIXL8_OnDirect(This,Np)	\
    (This)->lpVtbl -> OnDirect(This,Np)

#define IIXL8_OnBack(This,Nm,Delta)	\
    (This)->lpVtbl -> OnBack(This,Nm,Delta)

#define IIXL8_FetchResults(This,arrRes,bWhat)	\
    (This)->lpVtbl -> FetchResults(This,arrRes,bWhat)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL8_OnNet_Proxy( 
    IIXL8 __RPC_FAR * This,
    /* [in] */ double T,
    /* [in] */ long N);


void __RPC_STUB IIXL8_OnNet_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL8_OnSignalB_Proxy( 
    IIXL8 __RPC_FAR * This,
    /* [in] */ double Ag1,
    /* [in] */ double Tog1,
    /* [in] */ double Sg1);


void __RPC_STUB IIXL8_OnSignalB_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL8_OnDirect_Proxy( 
    IIXL8 __RPC_FAR * This,
    /* [in] */ long Np);


void __RPC_STUB IIXL8_OnDirect_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL8_OnBack_Proxy( 
    IIXL8 __RPC_FAR * This,
    /* [in] */ double Nm,
    /* [in] */ double Delta);


void __RPC_STUB IIXL8_OnBack_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IIXL8_FetchResults_Proxy( 
    IIXL8 __RPC_FAR * This,
    /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes,
    /* [in] */ VARIANT_BOOL bWhat);


void __RPC_STUB IIXL8_FetchResults_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IIXL8_INTERFACE_DEFINED__ */



#ifndef __IX8Lib_LIBRARY_DEFINED__
#define __IX8Lib_LIBRARY_DEFINED__

/* library IX8Lib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_IX8Lib;

EXTERN_C const CLSID CLSID_IXL8;

#ifdef __cplusplus

class DECLSPEC_UUID("192B3ACE-A76D-11D3-8E34-00504E02C39D")
IXL8;
#endif
#endif /* __IX8Lib_LIBRARY_DEFINED__ */

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
