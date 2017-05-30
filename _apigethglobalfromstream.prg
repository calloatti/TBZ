*!* _apiGetHGlobalFromStream

Lparameters pstm, phglobal

Declare Integer GetHGlobalFromStream in OLE32.DLL As _apiGetHGlobalFromStream ;
	Integer pstm, ;
	Integer @phglobal

Return _apiGetHGlobalFromStream(m.pstm, @m.phglobal)