*!* _apiSystemParametersInfo_IISI

Lparameters uiAction, uiParam, pvParam, fWinIni

Declare Integer SystemParametersInfo In WIN32API As _apiSystemParametersInfo_IISI ;
	Integer uiAction, ;
	Integer uiParam, ;
	String  @pvParam, ;
	Integer fWinIni

Return _apiSystemParametersInfo_IISI(m.uiAction, m.uiParam, @m.pvParam, m.fWinIni)