*!* _apiDrawThemeBackground

#Define NTDDI_WINXP 	05010000

Lparameters hTheme, hdc, iPartId, iStateId, pRect, pClipRect

If _apiGetOsVersion() < NTDDI_WINXP Then
	Return 0
Else
	Declare Integer DrawThemeBackground In UXTHEME.DLL As _apiDrawThemeBackground ;
		Integer hTheme, ;
		Integer hdc, ;
		Integer iPartId, ;
		Integer iStateId, ;
		String  pRect, ;
		String  pClipRect

	Return _apiDrawThemeBackground(m.hTheme, m.hdc, m.iPartId, m.iStateId, m.pRect, m.pClipRect)
Endif