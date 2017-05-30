*!* _apiTrackPopupMenuEx

Lparameters hMenu, fuFlags, nx, ny, nHwnd, lptpm

Declare Integer TrackPopupMenuEx In WIN32API As _apiTrackPopupMenuEx;
	Integer hMenu, ;
	Integer fuFlags, ;
	Integer nX, ;
	Integer nY, ;
	Integer nhWnd, ;
	Integer lptpm

Return _apiTrackPopupMenuEx(m.hMenu, m.fuFlags, m.nx, m.ny, m.nHwnd, @m.lptpm)