*!* _apiGdipCreateHBITMAPFromBitmap

Lparameters pBitmap, hbmReturn, background

Declare Integer GdipCreateHBITMAPFromBitmap In GDIPLUS.DLL As _apiGdipCreateHBITMAPFromBitmap ;
	Integer pBitmap, ;
	Integer @hbmReturn, ;
	Integer background

Return _apiGdipCreateHBITMAPFromBitmap(m.pbitmap, @m.hbmReturn, m.background)
