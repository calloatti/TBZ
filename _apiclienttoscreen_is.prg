*!* _apiClientToScreen_IS

Lparameters nHwnd, lpPoint

Declare Integer ClientToScreen In WIN32API As _apiClientToScreen_IS ;
	Integer nhWnd, ;
	String  @lpPoint

Return _apiClientToScreen_IS(m.nHwnd, @m.lpPoint)