
SigHelperps.dll: dlldata.obj SigHelper_p.obj SigHelper_i.obj
	link /dll /out:SigHelperps.dll /def:SigHelperps.def /entry:DllMain dlldata.obj SigHelper_p.obj SigHelper_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del SigHelperps.dll
	@del SigHelperps.lib
	@del SigHelperps.exp
	@del dlldata.obj
	@del SigHelper_p.obj
	@del SigHelper_i.obj
