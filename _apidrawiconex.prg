*!* _apiDrawIconEx

Lparameters hdc, xLeft, yTop, hIcon, cxWidth, cyWidth, istepIfAniCur, hbrFlickerFreeDraw, diFlags

Declare Integer DrawIconEx In WIN32API As _apiDrawIconEx ;
	Integer hdc, ;
	Integer xLeft, ;
	Integer yTop, ;
	Integer hIcon, ;
	Integer cxWidth, ;
	Integer cyWidth, ;
	Integer istepIfAniCur, ;
	Integer hbrFlickerFreeDraw, ;
	Integer diFlags

Return _apiDrawIconEx(m.hdc, m.xLeft, m.yTop, m.hIcon, m.cxWidth, m.cyWidth, m.istepIfAniCur, m.hbrFlickerFreeDraw, m.diFlags)