/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 5.01.0164 */
/* at Wed Dec 01 20:45:44 1999
 */
/* Compiler settings for G:\WORK\Signal\SigHelper\SigHelper.idl:
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

#ifndef __SigHelper_h__
#define __SigHelper_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

#ifndef __ISHlp_FWD_DEFINED__
#define __ISHlp_FWD_DEFINED__
typedef interface ISHlp ISHlp;
#endif 	/* __ISHlp_FWD_DEFINED__ */


#ifndef __SHlp_FWD_DEFINED__
#define __SHlp_FWD_DEFINED__

#ifdef __cplusplus
typedef class SHlp SHlp;
#else
typedef struct SHlp SHlp;
#endif /* __cplusplus */

#endif 	/* __SHlp_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

/* interface __MIDL_itf_SigHelper_0000 */
/* [local] */ 

typedef /* [public][public][uuid][version][public] */ struct  __MIDL___MIDL_itf_SigHelper_0000_0001
    {
    double x;
    double y;
    VARIANT_BOOL b;
    }	XYPoint2;



extern RPC_IF_HANDLE __MIDL_itf_SigHelper_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_SigHelper_0000_v0_0_s_ifspec;

#ifndef __ISHlp_INTERFACE_DEFINED__
#define __ISHlp_INTERFACE_DEFINED__

/* interface ISHlp */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_ISHlp;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("78F8196D-A265-11D3-8E26-00504E02C39D")
    ISHlp : public IDispatch
    {
    public:
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE InsertPoints( 
            /* [in] */ VARIANT arrGenerated,
            /* [in] */ VARIANT arrSpec,
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct ISHlpVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            ISHlp __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            ISHlp __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            ISHlp __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            ISHlp __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            ISHlp __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            ISHlp __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            ISHlp __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *InsertPoints )( 
            ISHlp __RPC_FAR * This,
            /* [in] */ VARIANT arrGenerated,
            /* [in] */ VARIANT arrSpec,
            /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);
        
        END_INTERFACE
    } ISHlpVtbl;

    interface ISHlp
    {
        CONST_VTBL struct ISHlpVtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define ISHlp_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define ISHlp_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define ISHlp_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define ISHlp_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define ISHlp_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define ISHlp_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define ISHlp_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define ISHlp_InsertPoints(This,arrGenerated,arrSpec,arrRes)	\
    (This)->lpVtbl -> InsertPoints(This,arrGenerated,arrSpec,arrRes)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE ISHlp_InsertPoints_Proxy( 
    ISHlp __RPC_FAR * This,
    /* [in] */ VARIANT arrGenerated,
    /* [in] */ VARIANT arrSpec,
    /* [out] */ SAFEARRAY __RPC_FAR * __RPC_FAR *arrRes);


void __RPC_STUB ISHlp_InsertPoints_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __ISHlp_INTERFACE_DEFINED__ */



#ifndef __SIGHELPERLib_LIBRARY_DEFINED__
#define __SIGHELPERLib_LIBRARY_DEFINED__

/* library SIGHELPERLib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_SIGHELPERLib;

EXTERN_C const CLSID CLSID_SHlp;

#ifdef __cplusplus

class DECLSPEC_UUID("78F8196E-A265-11D3-8E26-00504E02C39D")
SHlp;
#endif
#endif /* __SIGHELPERLib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  LPSAFEARRAY_UserSize(     unsigned long __RPC_FAR *, unsigned long            , LPSAFEARRAY __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  LPSAFEARRAY_UserMarshal(  unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, LPSAFEARRAY __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  LPSAFEARRAY_UserUnmarshal(unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, LPSAFEARRAY __RPC_FAR * ); 
void                      __RPC_USER  LPSAFEARRAY_UserFree(     unsigned long __RPC_FAR *, LPSAFEARRAY __RPC_FAR * ); 

unsigned long             __RPC_USER  VARIANT_UserSize(     unsigned long __RPC_FAR *, unsigned long            , VARIANT __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  VARIANT_UserMarshal(  unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, VARIANT __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  VARIANT_UserUnmarshal(unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, VARIANT __RPC_FAR * ); 
void                      __RPC_USER  VARIANT_UserFree(     unsigned long __RPC_FAR *, VARIANT __RPC_FAR * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif
