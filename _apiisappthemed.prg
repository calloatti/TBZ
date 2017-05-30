*!* _apiIsAppThemed

#Define NTDDI_WINXP 	05010000

If _apiGetOsVersion() < NTDDI_WINXP Then
	Return 0
Else
	Declare Integer IsAppThemed In UXTHEME.DLL As _apiIsAppThemed
	Return _apiIsAppThemed()
Endif