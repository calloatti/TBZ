*!* _apiCreateWindowEx

Lparameters dwExStyle, lpClassName, lpWindowName, dwStyle, nx, ny, nWidth, nHeight, nHwndParent, hMenu, hInstance, lpParam

Declare Integer CreateWindowEx In WIN32API As _apiCreateWindowEx ;
	Integer dwExStyle, ;
	String  lpClassName, ;
	String  lpWindowName, ;
	Integer dwStyle, ;
	Integer nx, ;
	Integer ny, ;
	Integer nWidth, ;
	Integer nHeight, ;
	Integer nHwndParent, ;
	Integer hMenu, ;
	Integer hInstance, ;
	Integer lpParam

Return _apiCreateWindowEx(m.dwExStyle, m.lpClassName, m.lpWindowName, m.dwStyle, m.nx, m.ny, m.nWidth, m.nHeight, m.nHwndParent, m.hMenu, m.hInstance, m.lpParam)