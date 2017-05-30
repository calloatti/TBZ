*!* _apiGlobalAlloc

Lparameters uFlags, dwBytes

Declare Integer GlobalAlloc In WIN32API As _apiGlobalAlloc ;
	Integer uFlags, ;
	Integer dwBytes

Return _apiGlobalAlloc(m.uFlags, m.dwBytes)
