
IX6ps.dll: dlldata.obj IX6_p.obj IX6_i.obj
	link /dll /out:IX6ps.dll /def:IX6ps.def /entry:DllMain dlldata.obj IX6_p.obj IX6_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \

.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del IX6ps.dll
	@del IX6ps.lib
	@del IX6ps.exp
	@del dlldata.obj
	@del IX6_p.obj
	@del IX6_i.obj
