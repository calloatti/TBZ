*!* _apiCloseThemeData

#Define NTDDI_WINXP 	05010000

Lparameters hTheme

If _apiGetOsVersion() < NTDDI_WINXP Then
	Return 0
Else
	Declare Integer CloseThemeData In UXTHEME.DLL As _apiCloseThemeData ;
		Integer hTheme
	Return _apiCloseThemeData(m.hTheme)
Endif