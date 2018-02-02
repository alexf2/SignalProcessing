
IX7ps.dll: dlldata.obj IX7_p.obj IX7_i.obj
	link /dll /out:IX7ps.dll /def:IX7ps.def /entry:DllMain dlldata.obj IX7_p.obj IX7_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del IX7ps.dll
	@del IX7ps.lib
	@del IX7ps.exp
	@del dlldata.obj
	@del IX7_p.obj
	@del IX7_i.obj
