
IX3ps.dll: dlldata.obj IX3_p.obj IX3_i.obj
	link /dll /out:IX3ps.dll /def:IX3ps.def /entry:DllMain dlldata.obj IX3_p.obj IX3_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del IX3ps.dll
	@del IX3ps.lib
	@del IX3ps.exp
	@del dlldata.obj
	@del IX3_p.obj
	@del IX3_i.obj
