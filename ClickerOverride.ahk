#SingleInstance Force

SetTitleMatchMode, 2

getWindowTitle() {
	
	WindowTitles := ["PowerPoint Presenter View", "Pympress Content"]
	
	for index, element in WindowTitles
	{
		IfWinExist, %element%
		{
			return %element%
		}

	}	
}

*Left::
	ControlSend,,{Left},% getWindowTitle()
	return

*Right::
	ControlSend,,{Right},% getWindowTitle()
	return
