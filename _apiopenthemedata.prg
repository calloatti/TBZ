*!* _apiOpenThemeData

#Define NTDDI_WINXP 	05010000

Lparameters nHwnd, pszClassList

If _apiGetOsVersion() < NTDDI_WINXP Then
	Return -1
Else
	Declare Integer OpenThemeData In UXTHEME.DLL As _apiOpenThemeData ;
		Integer nhWnd, ;
		String  pszClassList

	Return _apiOpenThemeData(m.nHwnd, m.pszClassList)
Endif