#Define MIIM_BITMAP											128
#Define MIIM_CHECKMARKS										8
#Define MIIM_DATA											32
#Define MIIM_FTYPE											256
#Define MIIM_ID												2
#Define MIIM_STATE											1
#Define MIIM_STRING											64
#Define MIIM_SUBMENU										4
#Define MIIM_TYPE											16

Local iMenuCount, phMenu


m.phMenu = _apiGetMenu(_vfp.HWnd)

m.iMenuCount = _apiGetMenuItemCount(m.phMenu)

?m.iMenuCount

asubmenu = MENUGETINFO(m.phMenu, 0)

WAIT asubmenu WINDOW 

MENUGETINFO(m.asubmenu, 0)
MENUGETINFO(m.asubmenu, 1)
MENUGETINFO(m.asubmenu, 2)

 Function MENUGETINFO

	Lparameters pmenu, pindex

	Local ccaption, cchWText, dwMSAASignature, iUnknown1, oMenuItemInfo, pszWText

	m.oMenuItemInfo = _STRUCT_MENUITEMINFO()

	**MIIM_BITMAP+MIIM_CHECKMARKS+MIIM_DATA+MIIM_FTYPE+MIIM_ID+MIIM_STATE+MIIM_STRING+MIIM_SUBMENU
	m.oMenuItemInfo.fMask	   = MIIM_BITMAP + MIIM_CHECKMARKS + MIIM_DATA + MIIM_FTYPE + MIIM_ID + MIIM_STATE + MIIM_STRING + MIIM_SUBMENU
	m.oMenuItemInfo.dwTypeData = Space(254)
	m.oMenuItemInfo.cch		   = 254

	_apiGetMenuItemInfo(m.pmenu, m.pindex, 1, m.oMenuItemInfo.Address)

	With m.oMenuItemInfo
		?'cbSize       ', .cbSize
		?'fMask        ', .fMask
		?'fType        ', .fType
		?'fState       ', .fState
		?'wID          ', .wID
		?'hSubMenu     ', .hSubMenu
		?'hbmpChecked  ', .hbmpChecked
		?'hbmpUnchecked', .hbmpUnchecked
		?'dwItemData   ', .dwItemData
		?'dwTypeData   ', .dwTypeData
		?'cch          ', .cch
		?'hbmpItem     ', .hbmpItem
	Endwith

	If m.oMenuItemInfo.dwItemData > 0 Then

		*!*	typedef struct tagMSAAMENUINFO {
		*!*	  DWORD  dwMSAASignature ;
		*!*	  DWORD  cchWText ;
		*!*	  LPWSTR pszWText ;
		*!*	} MSAAMENUINFO, *LPMSAAMENUINFO ;


		m.dwMSAASignature = Strconv(Sys(2600, m.oMenuItemInfo.dwItemData, 4), 15)

		m.cchWText = CToBin(Sys(2600, m.oMenuItemInfo.dwItemData + 4, 4), '4rs')

		m.pszWText = CToBin(Sys(2600, m.oMenuItemInfo.dwItemData + 8, 4), '4rs')


		If m.cchWText > 0 Then
			*m.iLen = m.iLen + 2
			m.ccaption = Strconv(Sys(2600, m.pszWText, m.cchWText * 2), 6)
		Else
			m.ccaption = ''
		Endif

		?'dwMSAASignature:', m.dwMSAASignature
		?'cchWText:', m.cchWText
		?'pszWText', m.pszWText 
		?'WText',m.ccaption
?STRCONV(Sys(2600, m.oMenuItemInfo.dwItemData + 12, 64),15)
*!*			?CToBin(Sys(2600, m.oMenuItemInfo.dwItemData + 12, 4), '4rs')
*!*			?CToBin(Sys(2600, m.oMenuItemInfo.dwItemData + 16, 4), '4rs')
*!*			?CToBin(Sys(2600, m.oMenuItemInfo.dwItemData + 20, 4), '4rs')
*!*			?CToBin(Sys(2600, m.oMenuItemInfo.dwItemData + 24, 4), '4rs')
*!*			?CToBin(Sys(2600, m.oMenuItemInfo.dwItemData + 28, 4), '4rs')

	ENDIF
	
	?'-----------'

RETURN m.oMenuItemInfo.hSubMenu
Endfunc


