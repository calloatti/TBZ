*!* _apiDrawText_ISISI

Lparameters hDC, lpchText, nCount, lpRect, uFormat

Declare Integer DrawText in WIN32API As _apiDrawText_ISISI ;
	Integer hDC, ;
	String  @lpchText, ;
	Integer nCount, ;
	String  @lpRect, ;
	Integer uFormat

Return _apiDrawText_ISISI(m.hDC, @m.lpchText, m.nCount, @m.lpRect, m.uFormat)