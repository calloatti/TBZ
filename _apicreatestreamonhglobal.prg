*!* _apiCreateStreamOnHGlobal

Lparameters hGlobal, fDeleteOnRelease, ppstm

Declare Integer CreateStreamOnHGlobal in OLE32.DLL As _apiCreateStreamOnHGlobal ;
Integer hGlobal, ;
Integer fDeleteOnRelease, ;
Integer @ppstm

Return _apiCreateStreamOnHGlobal(m.hGlobal, m.fDeleteOnRelease, @m.ppstm)