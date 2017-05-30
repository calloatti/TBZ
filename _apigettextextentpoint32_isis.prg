*!* _apiGetTextExtentPoint32_ISIS

Lparameters hdc, lpsz, cbString, lpSize

Declare Integer GetTextExtentPoint32 In WIN32API As _apiGetTextExtentPoint32_ISIS ;
	Integer hdc, ;
	String  lpsz, ;
	Integer cbString, ;
	String  @lpSize

Return _apiGetTextExtentPoint32_ISIS(m.hdc, m.lpsz, m.cbString, @m.lpSize)