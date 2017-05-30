#Define BP_PUSHBUTTON			1
#Define BP_RADIOBUTTON			2
#Define BP_CHECKBOX				3
#Define BP_GROUPBOX				4
#Define BP_USERBUTTON			5
#Define BP_COMMANDLINK			6
#Define BP_COMMANDLINKGLYPH		7

#Define MENU_BARBACKGROUND									7
#Define MENU_BARITEM										8
#Define MENU_CHEVRON_TMSCHEMA								5
#Define MENU_MENUBARDROPDOWN_TMSCHEMA						4
#Define MENU_MENUBARITEM_TMSCHEMA							3
#Define MENU_MENUDROPDOWN_TMSCHEMA							2
#Define MENU_MENUITEM_TMSCHEMA								1
#Define MENU_POPUPBACKGROUND								9
#Define MENU_POPUPBORDERS									10
#Define MENU_POPUPCHECK										11
#Define MENU_POPUPCHECKBACKGROUND							12
#Define MENU_POPUPGUTTER									13
#Define MENU_POPUPITEM										14
#Define MENU_POPUPSEPARATOR									15
#Define MENU_POPUPSUBMENU									16
#Define MENU_SEPARATOR_TMSCHEMA								6
#Define MENU_SYSTEMCLOSE									17
#Define MENU_SYSTEMMAXIMIZE									18
#Define MENU_SYSTEMMINIMIZE									19
#Define MENU_SYSTEMRESTORE									20

Local ard[1], hDC, htheme, pRect

CLEAR

Dimension m.ard[1, 4]

m.htheme = _apiOpenThemeData(_vfp.HWnd, Strconv('rebar' + 0h00, 5))

m.hDC = _apigetdc(_Screen.HWnd)

nx1	= 0
ny1	= 0
nx2	= nx1 + 100
ny2	= ny1 + 26

FOR lnx = 0 TO 20

m.pRect = BinToC(nx1, '4rs') + BinToC(ny1, '4rs') + BinToC(nx2, '4rs') + BinToC(ny2, '4rs')

_apiDrawThemeBackground(m.htheme, m.hDC, 14, lnx, m.pRect, 0)

ny1 = ny1 + 26
ny2	= ny2 + 26


ENDFOR


_apiCloseThemeData(m.htheme)

_apireleasedc(_Screen.HWnd, m.hDC)