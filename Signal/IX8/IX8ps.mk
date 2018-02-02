
IX8ps.dll: dlldata.obj IX8_p.obj IX8_i.obj
	link /dll /out:IX8ps.dll /def:IX8ps.def /entry:DllMain dlldata.obj IX8_p.obj IX8_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del IX8ps.dll
	@del IX8ps.lib
	@del IX8ps.exp
	@del dlldata.obj
	@del IX8_p.obj
	@del IX8_i.obj
