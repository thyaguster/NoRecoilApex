#NoEnv
#SingleInstance force
#MaxThreadsBuffer on
SendMode Input
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows On
SetTitleMatchMode RegEx

if not A_IsAdmin
    {
       Run *RunAs "%A_ScriptFullPath%"  
       ExitApp
    }

Gosub, IniRead
Gui, +Hwndgui_id
Gui, Show, %gui_position% w250 h100
Gui Show, w345 h400, No Recoil Script
Gui, Color, Grey
Gui, Font, cWhite
Gui, Font, s12
Gui Add, Text, x0 y8 w343 h20 Center, Apex Legends No Recoil Script
Gui, Font, s10
Gui Add, GroupBox, x18 y32 w190 h285, Hotkeys
Gui Add, GroupBox, x214 y32 w122 h70, Settings
Gui Add, Text, x32 y56 w89 h16, [ %key_akm% ] Wingman
Gui Add, Text, x32 y72 w86 h16, [ %key_m16a4% ] Hemlock
Gui Add, Text, x32 y88 w67 h16, [ %key_skspubg% ] Scout
Gui Add, Text, x32 y104 w63 h16, [ %key_uzi% ] R301
Gui Add, Text, x32 y120 w56 h16, [ %key_vector% ] R99
Gui Add, Text, x32 y136 w73 h16, [ %key_m416% ] Spitfire
Gui Add, Text, x32 y152 w75 h16, [ %key_scar% ] Flatline
Gui Add, Text, x32 y168 w56 h16, [ %key_ump% ] R45
Gui Add, Text, x32 y184 w89 h16, [ %key_groza% ] Alternator
Gui Add, Text, x32 y200 w76 h16, [ %key_glock% ] P2020
Gui Add, Text, x32 y216 w158 h16, [ %key_peacekeeper% ] Peacekeeper Glitch
Gui Add, Text, x32 y240 w109 h16, [ %key_RCoff% ] Disable Script
Gui Add, Text, x32 y256 w111 h16, [ %key_Terminate% ] Close Script
Gui Add, Text, x32 y272 w140 h16, [ %key_pause% ] Pause Script
Gui Add, Text, x32 y288 w140 h16, [ %key_freemode% ] Autofire On/Off
Gui Font, s8
Gui Add, Text, x43 y370 w300 h13, If you need help add me on discord: Aljubarrota#3579
Gui Add, Text, x224 y56 w60 h21, mouse sens:
Gui Add, Text, x224 y72 w60 h17, zoom sens:
Gui Add, Text, x288 y56 w30 h17, %sens%
Gui Add, Text, x288 y72 w30 h17, %zoom_sens%
Gui Font
IfWinExist, i)%script_name%.* ahk_class AutoHotkey
{
Gui, Add, Button, x128 y328 w90 h30 gbtCloseScript, Stop Script
}
Else
{
Gui, Add, Button, x128 y328 w90 h30 gbtStartScript, Start Script
}
Gui, Add, Button, x224 y328 w90 h30 gbtSettings, Settings
Gui, Add, Button, x32 y328 w90 h30 gbtCloseGUI, Close GUI
return

GuiClose:
WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
IniWrite, x%gui_x% y%gui_y%, settings.ini, window position, gui_position
ExitApp

btCloseGUI:
	WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
	IniWrite, x%gui_x% y%gui_y%, settings.ini, window position, gui_position
	ExitApp
	return	
btCloseScript:
	Ans:=CloseScript(script_name)
	Run gui.ahk
	return
btSettings:
	GoSub, SettingsGUI
	return
btStartScript:
	Run %script_name%
	Run gui.ahk
	Run Ahkhider.ahk
	return

SettingsGUI:
Gui, 2:New
Gui, Show, %gui_position% w250 h100
Gui, Color, Grey
Gui, Show, w350 h450, No Recoil Script Configuration
Gui, +Hwndgui_id
Gui, Font, cWhite
Gui, Font, s8
Gui Add, Text, x80 y40 w60 h20, Wingman
Gui Add, Text, x80 y64 w60 h20, Hemlock
Gui Add, Text, x80 y88 w60 h20, Scout
Gui Add, Text, x80 y112 w60 h20, R301
Gui Add, Text, x80 y136 w60 h20, R99
Gui Add, Text, x80 y160 w60 h20, Spitfire
Gui Add, Text, x80 y184 w60 h20, Flatline
Gui Add, Text, x80 y208 w60 h20, R45
Gui Add, Text, x80 y232 w60 h20, Alternator
Gui Add, Text, x80 y256 w60 h20, P2020
Gui Add, Text, x80 y280 w102 h20, Peacekeeper Glitch
Gui Add, Text, x80 y304 w102 h20, Disable Script
Gui Add, Text, x80 y328 w102 h20, Close Script
Gui Add, Text, x80 y352 w102 h20, Pause Script
Gui Add, Text, x80 y376 w102 h20, Autofire On/Off
Gui Add, Button, x224 y360 w90 h30 gbtSave, Save
Gui, Font, cBlack
Gui Add, Edit, x32 y40 w40 h20 vkey_akm, %key_akm%
Gui Add, Edit, x32 y64 w40 h20 vkey_m16a4, %key_m16a4%
Gui Add, Edit, x32 y88 w40 h20 vkey_skspubg, %key_skspubg%
Gui Add, Edit, x32 y112 w40 h20 vkey_uzi, %key_uzi%
Gui Add, Edit, x32 y136 w40 h20 vkey_vector, %key_vector%
Gui Add, Edit, x32 y160 w40 h20 vkey_m416, %key_m416%
Gui Add, Edit, x32 y184 w40 h20 vkey_scar, %key_scar%
Gui Add, Edit, x32 y208 w40 h20 vkey_ump, %key_ump%
Gui Add, Edit, x32 y232 w40 h20 vkey_groza, %key_groza%
Gui Add, Edit, x32 y256 w40 h20 vkey_glock, %key_glock%
Gui Add, Edit, x32 y280 w40 h20 vkey_peacekeeper, %key_peacekeeper%
Gui Add, Edit, x32 y304 w40 h20 vrCoff, %key_rCoff%
Gui Add, Edit, x32 y328 w40 h20 vkey_terminate, %key_terminate%
Gui Add, Edit, x32 y352 w40 h20 vkey_pause, %key_pause%
Gui Add, Edit, x32 y376 w40 h20 vkey_freemode, %key_freemode%
Gui Add, Edit, x288 y40 w31 h21 vsens, %sens%
Gui Add, Edit, x280 y168 w31 h21 vvolume, %volume%
Gui Add, Edit, x280 y192 w31 h21 vrate, %rate%
Gui Add, Edit, x288 y64 w31 h21 vzoom_sens, %zoom_sens%
Gui, Font, cWhite
Gui Add, Text, x224 y40 w57 h20, Sens:
Gui Add, Text, x224 y64 w60 h20, Zoom Sens:
Gui Add, Text, x224 y168 w50 h20, Volume
Gui Add, Text, x224 y192 w50 h20, Speed:

if (script_version="narrator")
{
Gui Add, Radio, x214 y280 w115 h21 gCheck vRadio1 Checked, Narrator (fullscreen)
Gui Add, Radio, x214 y304 w115 h21 gCheck, Tooltip (borderless)
}
else if (script_version="tooltip")
{
Gui Add, Radio, x214 y280 w115 h21 gCheck vRadio1, Narrator (fullscreen)
Gui Add, Radio, x214 y304 w115 h21 gCheck Checked, Tooltip (borderless)
}
else
{
Gui Add, Radio, x214 y280 w115 h21 gCheck vRadio1 Checked, Narrator (fullscreen)
Gui Add, Radio, x214 y304 w115 h21 gCheck, Tooltip (borderless)
}
Gui Add, GroupBox, x208 y16 w124 h114 +Left, Mouse Settings
Gui Add, GroupBox, x208 y144 w124 h98 +Left, Voice Settings
Gui Add, GroupBox, x16 y16 w173 h402, Hotkeys Configuration
Gui Add, GroupBox, x208 y256 w123 h89, Script Version
Gui 2:Show, w350 h450, No Recoil Script Configuration
Gui, -AlwaysOnTop
return

2GuiClose:
run gui.ahk

Check:
Gui, Submit, NoHide
if (Radio1=1)
	IniWrite, "narrator", settings.ini, script configs, script_version
else if (Radio1=2)
	IniWrite, "tooltip", settings.ini, script configs, script_version
return

btSave:
Gui, submit
IniWrite, "%gui_position%", settings.ini, window position, gui_position
IniWrite, "%script_name%", settings.ini, script configs, script_name
IniWrite, "%key_RCoff%", settings.ini, keybinds, key_disable
IniWrite, "%key_Terminate%", settings.ini, keybinds, key_terminate
IniWrite, "%key_1%", settings.ini, keybinds, key_1
IniWrite, "%key_2%", settings.ini, keybinds, key_2
IniWrite, "%key_4%", settings.ini, keybinds, key_heal
IniWrite, "%key_g%", settings.ini, keybinds, key_grenade
IniWrite, "%key_x%", settings.ini, keybinds, key_holster
IniWrite, "%key_freemode%", settings.ini, keybinds, key_autofire
IniWrite, "%key_akm%", settings.ini, keybinds, key_wingman
IniWrite, "%key_m16a4%", settings.ini, keybinds, key_hemlok
IniWrite, "%key_skspubg%", settings.ini, keybinds, key_scout
IniWrite, "%key_uzi%", settings.ini, keybinds, key_r301
IniWrite, "%key_vector%", settings.ini, keybinds, key_r99
IniWrite, "%key_m416%", settings.ini, keybinds, key_spitfire
IniWrite, "%key_scar%", settings.ini, keybinds, key_flatline
IniWrite, "%key_ump%", settings.ini, keybinds, key_r45
IniWrite, "%key_groza%", settings.ini, keybinds, key_alternator
IniWrite, "%key_glock%", settings.ini, keybinds, key_p2020
IniWrite, "%key_peacekeeper%", settings.ini, keybinds, key_peacekeeper
IniWrite, "%key_pause%", settings.ini, keybinds, key_pause
IniWrite, "%sens%", settings.ini, mouse settings, sens
IniWrite, "%zoom_sens%", settings.ini, mouse settings, zoom_sens
IniWrite, "%volume%", settings.ini, voice settings, volume
IniWrite, "%rate%", settings.ini, voice settings, rate
Ans:=CloseScript(script_name)
Run gui.ahk
return

IniRead:
IfNotExist, settings.ini
{
MsgBox, Couldn't find settings.ini. I'll create one for you.
IniWrite, "F1", settings.ini, keybinds, key_wingman
IniWrite, "F2", settings.ini, keybinds, key_hemlok
IniWrite, "F3", settings.ini, keybinds, key_scout
IniWrite, "F4", settings.ini, keybinds, key_r301
IniWrite, "F5", settings.ini, keybinds, key_r99
IniWrite, "F6", settings.ini, keybinds, key_spitfire
IniWrite, "F7", settings.ini, keybinds, key_flatline
IniWrite, "F8", settings.ini, keybinds, key_r45
IniWrite, "F9", settings.ini, keybinds, key_alternator
IniWrite, "F10", settings.ini, keybinds, key_p2020
IniWrite, "F11", settings.ini, keybinds, key_peacekeeper
IniWrite, "9", settings.ini, keybinds, key_disable
IniWrite, "Del", settings.ini, keybinds, key_terminate
IniWrite, "1", settings.ini, keybinds, key_1
IniWrite, "2", settings.ini, keybinds, key_2
IniWrite, "4", settings.ini, keybinds, key_heal
IniWrite, "G", settings.ini, keybinds, key_grenade
IniWrite, "3", settings.ini, keybinds, key_holster
IniWrite, "Home", settings.ini, keybinds, key_autofire
IniWrite, "INS"`n, settings.ini, keybinds, key_pause
IniWrite, "5.0", settings.ini, mouse settings, sens
IniWrite, "1.0"`n, settings.ini, mouse settings, zoom_sens
IniWrite, "80", settings.ini, voice settings, volume
IniWrite, "7"`n, settings.ini, voice settings, rate
IniWrite, "narrator", settings.ini, script configs, script_version
IniWrite, "no-recoil.ahk"`n, settings.ini, script configs, script_name
IniWrite, "", settings.ini, window position, gui_position
IniRead, script_name, settings.ini, script configs, script_name
Run, gui.ahk
}
Else
{
IniRead, key_RCoff, settings.ini, keybinds, key_disable
IniRead, key_Terminate, settings.ini, keybinds, key_terminate
IniRead, key_1, settings.ini, keybinds, key_1
IniRead, key_2, settings.ini, keybinds, key_2
IniRead, key_4, settings.ini, keybinds, key_heal
IniRead, key_g, settings.ini, keybinds, key_grenade
IniRead, key_x, settings.ini, keybinds, key_holster
IniRead, key_freemode, settings.ini, keybinds, key_autofire
IniRead, key_akm, settings.ini, keybinds, key_wingman
IniRead, key_m16a4, settings.ini, keybinds, key_hemlok
IniRead, key_skspubg, settings.ini, keybinds, key_scout
IniRead, key_uzi, settings.ini, keybinds, key_r301
IniRead, key_vector, settings.ini, keybinds, key_r99
IniRead, key_m416, settings.ini, keybinds, key_spitfire
IniRead, key_scar, settings.ini, keybinds, key_flatline
IniRead, key_ump, settings.ini, keybinds, key_r45
IniRead, key_groza, settings.ini, keybinds, key_alternator
IniRead, key_glock, settings.ini, keybinds, key_p2020
IniRead, key_peacekeeper, settings.ini, keybinds, key_peacekeeper
IniRead, key_pause, settings.ini, keybinds, key_pause
IniRead, sens, settings.ini, mouse settings, sens
IniRead, zoom_sens, settings.ini, mouse settings, zoom_sens
IniRead, volume, settings.ini, voice settings, volume
IniRead, rate, settings.ini, voice settings, rate
IniRead, script_version, settings.ini, script configs, script_version
IniRead, script_name, settings.ini, script configs, script_name
IniRead, gui_position, settings.ini, window position, gui_position
}
return

CloseScript(Name)
	{
	DetectHiddenWindows On
	SetTitleMatchMode RegEx
	IfWinExist, i)%Name%.* ahk_class AutoHotkey
		{
		WinClose
		WinWaitClose, i)%Name%.* ahk_class AutoHotkey, , 2
		If ErrorLevel
			return "Unable to close " . Name
		else
			return "Closed " . Name
		}
	else
		return Name . " not found"
	}
