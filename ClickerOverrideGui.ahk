﻿#SingleInstance Force

WinGet AllWindows, List

Gui, Add, Text,, Select the window to which 'previous slide' and 'next slide' will be redirected
Gui, Add, CheckBox, vFocusWindow, Activate the selected window
Gui, Add, Button, gReloadBtnHandler, &Refresh

Loop %AllWindows%
{
	LoopWindowId := AllWindows%A_Index%
	WinGetTitle LoopWindowTitle, ahk_id %LoopWindowId%
	WinGet, LoopWindowExe, ProcessName, ahk_id %LoopWindowId%
	if (A_Index = 1){
		Gui, Add, Radio,vSelectedWindowIndex checked, %LoopWindowTitle% - %LoopWindowExe%
	}
	else {
		Gui, Add, Radio,, %LoopWindowTitle% - %LoopWindowExe%
	}
}

Gui, Show
return

GuiClose:
	ExitApp
	return

ReloadBtnHandler: 
	Reload
	return

GetSelectedWindowId() {
	Gui, Submit, NoHide
	global AllWindows
	global SelectedWindowIndex
	id := AllWindows%SelectedWindowIndex%
	return %id%
}

MaybeFocusWindow() {
	Gui, Submit, NoHide
	global FocusWindow
	if FocusWindow
		WinActivate % "ahk_id" GetSelectedWindowId()
}

*Left::
	MaybeFocusWindow()
	ControlSend,ahk_parent,{Left},% "ahk_id" GetSelectedWindowId()
	return

*Right::
	MaybeFocusWindow()
	ControlSend,ahk_parent,{Right},% "ahk_id" GetSelectedWindowId()
	return
