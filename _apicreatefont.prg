*!* _apiCreateFont
*!*
*!* lpszFace
*!* [in] Pointer to a null-terminated String that specifies the typeface
*!* name of the font. The length of this String must not exceed 32 characters,
*!* including the terminating null character.
*!*
Lparameters nHeight, nWidth, nEscapement, nOrientation, fnWeight, fdwItalic, fdwUnderline, fdwStrikeOut, fdwCharSet, fdwOutputPrecision, fdwClipPrecision, fdwQuality, fdwPitchAndFamily, lpszFace

Declare Integer CreateFont In WIN32API As _apiCreateFont ;
	Integer nHeight, ;
	Integer nWidth, ;
	Integer nEscapement, ;
	Integer nOrientation, ;
	Integer fnWeight, ;
	Integer fdwItalic, ;
	Integer fdwUnderline, ;
	Integer fdwStrikeOut, ;
	Integer fdwCharSet, ;
	Integer fdwOutputPrecision, ;
	Integer fdwClipPrecision, ;
	Integer fdwQuality, ;
	Integer fdwPitchAndFamily, ;
	String  lpszFace

Return _apiCreateFont(m.nHeight, m.nWidth, m.nEscapement, m.nOrientation, m.fnWeight, m.fdwItalic, m.fdwUnderline, m.fdwStrikeOut, m.fdwCharSet, m.fdwOutputPrecision, m.fdwClipPrecision, m.fdwQuality, m.fdwPitchAndFamily, m.lpszFace)