*!* _apiSetMenuInfo

Lparameters hMenu, lpcmi

Declare Integer SetMenuInfo In WIN32API As _apiSetMenuInfo;
	Integer hmenu, ;
	String  @lpcmi

Return _apiSetMenuInfo(m.hMenu, @m.lpcmi)