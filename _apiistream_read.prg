*!* _apiIStream_Read

Lparameters pstm, Pv, cb

Declare Integer IStream_Read In SHLWAPI.DLL As _apiIStream_Read ;
	Integer pstm, ;
	String  @Pv, ;
	Integer cb

Return _apiIStream_Read(m.pstm, @m.pv, m.cb)