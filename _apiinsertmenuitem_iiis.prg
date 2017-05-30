*!* _apiInsertMenuItem_IIIS

Lparameters hMenu, uItem, fByPosition, lpmii

Declare Integer InsertMenuItem In WIN32API As _apiInsertMenuItem_IIIS ;
	Integer hMenu, ;
	Integer uItem, ;
	Integer fByPosition, ;
	String  lpmii

Return _apiInsertMenuItem_IIIS(m.hMenu, m.uItem, m.fByPosition, m.lpmii)