
IX4ps.dll: dlldata.obj IX4_p.obj IX4_i.obj
	link /dll /out:IX4ps.dll /def:IX4ps.def /entry:DllMain dlldata.obj IX4_p.obj IX4_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del IX4ps.dll
	@del IX4ps.lib
	@del IX4ps.exp
	@del dlldata.obj
	@del IX4_p.obj
	@del IX4_i.obj
