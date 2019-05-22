; Apex Legends No Recoil Script testversion 2.4 22052019
; use ahkhider.
#NoEnv
SetWorkingDir %A_ScriptDir%
#SingleInstance force
#MaxThreadsBuffer on
SetTitleMatchMode, 2
;#IfWinActive r5apex.exe
SetBatchLines -1						;removes default 10ms delay between lines
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
if not A_IsAdmin {
	Run *RunAs "%A_ScriptFullPath%"  
	ExitApp
}
GoSub, IniRead
Hotkey, %key_pause%, lblPause
if (mwheel_1 = 1) 
	Hotkey, *WheelUp, label_mw1
else if (mwheel_1 = 2)
	Hotkey, *WheelUp, label_mw2
if (mwheel_2 = 1)
	Hotkey, *WheelDown, label_mw1
else if (mwheel_2 = 2)
	Hotkey, *WheelDown, label_mw2
if (script_version="narrator")
	Selected:="Say"
else if (script_version="tooltip")
	Selected:="Tooltip"

;SAPI.voice := SAPI.GetVoices().Item(1) 	; uncomment this line to get female voice.
gun1:=0
, gun2:=0
, sec:=0
, firstrun:=0
, sauto:=0
, key_shoot:="LButton"
, key_zoom:="RButton"
, modifier:=2.50/sens
, SAPI:=ComObjCreate("SAPI.SpVoice")
, SAPI.rate:=rate
, SAPI.volume:=volume
loop {
	sleep, 10
if GetKeyState(key_1) or (vMWD=1) {
	m16a4:=false
	, m416:=false
	, uzi:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
	, disable:=true
	, disable2:=true
	, sec:=0
	, vMWD:=0
	, vMWU:=0
	if (gun1 = 1) {
		if (firstrun = 1) {
			m16a4:=false
			, m416:=false
			, uzi:=false
			, akm:=false
			, scar:=false
			, ump:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
		}
		if (mhemlock = 1) {
			m16a4:=true
			, m416:=false
			, uzi:=false
			, akm:=false
			, scar:=false
			, ump:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m hemlock")
		}
		if	(mr301 = 1) {
			uzi:=true
			, m416:=false
			, akm:=false
			, scar:=false
			, ump:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m r301")
		}
		if  (mr45 = 1) {
			ump:=true
			, m416:=false
			, uzi:=false
			, akm:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m r45")
		}
		if (mprowler = 1) {
			akm:=true
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m prowler")
		}	
		if (mvector = 1) {
			akm:=false
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=true
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m r99")
		}
		if (mspitfire = 1) {
			akm:=false
			, m416:=true
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m spitfire")
		}
		if (mscout = 1) {
			akm:=false
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=true
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m scout")
		}
		if (mflatline = 1) {
			akm:=false
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=true
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m flatline")
		}
		if (m2020 = 1) {
			akm:=false
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=true
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m p2020")
		}
		if (malt = 1) {
			akm:=false
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=true
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m alternator")
		}
		if (mhavoc = 1) {
			akm:=false
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=true
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=false
			%Selected%("m havoc")
		}
		if (mdevotion = 1) {
			akm:=false
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=true
			, peacekeeper:=false
			%Selected%("m devotion")
		}
		if (mpeacekeeper = 1) {
			akm:=false
			, m416:=false
			, uzi:=false
			, ump:=false
			, scar:=false
			, m16a4:=false
			, groza:=false
			, glock:=false
			, m249:=false
			, vector:=false
			, skspubg:=false
			, Tgun:=false
			, peacekeeper:=true
			%Selected%("m peacekeeper")
		}
	}
}
if GetKeyState(key_2) or (vMWU=1) {
	m16a4:=false
	, m416:=false
	, uzi:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
	, sec:=1
	, disable:=true
	, disable2:=true
	, vMWU:=0
	, vMWD:=0
	if (firstrun = 1) {
		m16a4:=false
		, m416:=false
		, uzi:=false
		, akm:=false
		, scar:=false
		, ump:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
	}
	if (shemlock = 1) {
		m16a4:=true
		, m416:=false
		, uzi:=false
		, akm:=false
		, scar:=false
		, ump:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s hemlock")
	}
	if	(sr301 = 1) {
		uzi:=true
		, m416:=false
		, akm:=false
		, scar:=false
		, ump:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s r301")
	}
	if  (sr45 = 1) {
		ump:=true
		, m416:=false
		, uzi:=false
		, akm:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s r45")
	}
	if (sprowler = 1) {
		akm:=true
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s prowler")
	}
	if (svector = 1) {
		akm:=false
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=true
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s r99")
	}
	if (sspitfire = 1) {
		akm:=false
		, m416:=true
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s spitfire")
	}
	if (sscout = 1) {
		akm:=false
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=true
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s scout")
	}
	if (sflatline) = 1 {
		akm:=false
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=true
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s flatline")
	}
	if (s2020 = 1) {
		akm:=false
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=true
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s p2020")
	}
	if (salt = 1) {
		akm:=false
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=true
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s alternator")
	}
	if (shavoc = 1) {
		akm:=false
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=true
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=false
		%Selected%("s havoc")
	}
	if (sdevotion = 1) {
		akm:=false
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=true
		, peacekeeper:=false
		%Selected%("s devotion")
	}
	if (speacekeeper = 1) {
		akm:=false
		, m416:=false
		, uzi:=false
		, ump:=false
		, scar:=false
		, m16a4:=false
		, groza:=false
		, glock:=false
		, m249:=false
		, vector:=false
		, skspubg:=false
		, Tgun:=false
		, peacekeeper:=true
		%Selected%("s peacekeeper")
	}
}
if GetKeyState(key_x) {
	disable2:=false
}
if GetKeyState(key_g) {
	disable2:=false
}
if GetKeyState(key_4) {
	disable:=true
}
if GetKeyState(key_ump) {
	if (sec = 1) {
		gun2:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=1
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, firstrun:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s r45")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=1
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m r45")
	}
	ump:=true
	, m416:=false
	, uzi:=false
	, akm:=false
	, scar:=false
	, m16a4:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
}

if GetKeyState(key_glock) {
	if (sec = 1) {
		gun2:=1
		, gun1:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, firstrun:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, s2020:=1
		, speacekeeper:=0
		%Selected%("s p2020")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, m2020:=1
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m p2020")
	}
	glock:=true
	, ump:=false
	, m416:=false
	, uzi:=false
	, akm:=false
	, scar:=false
	, m16a4:=false
	, groza:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
}
	
if GetKeyState(key_m16a4) {
	if (sec = 1) {
		gun2:=1
		, gun1:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=1
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, firstrun:=0
		, s2020:=0
		, speacekeeper:=0
		%Selected%("s hemlock")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=1
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, m2020:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m hemlock")
	}
	hemloksingle:=0
	sleep 20						; affects timing between weapon selection double clicking
	if GetKeyState(key_m16a4) {
		%Selected%("single fire")
		hemloksingle:=1
	}
	m16a4:=true
	, m416:=false
	, uzi:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
}
	
if GetKeyState(key_scar) {
	if (sec = 1) {
		gun2:=1
		, gun1:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=1
		, s2020:=0
		, firstrun:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s flatline")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, m2020:=0
		, mflatline:=1
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m flatline")
	}
	scar:=true
	. m416:=false
	, uzi:=false
	, akm:=false
	, ump:=false
	, m16a4:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
}

if GetKeyState(key_m416) {
	if (sec = 1) {
		gun2:=1
		, gun1:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=1
		, sscout:=0
		, sflatline:=0
		, firstrun:=0
		, s2020:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s spitfire")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, m2020:=0
		, mspitfire:=1
		, mscout:=0
		, mflatline:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m spitfire")
	}
	m416:=true
	, ump:=false
	, uzi:=false
	, akm:=false
	, scar:=false
	, m16a4:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
}

if GetKeyState(key_akm) {
	if (sec = 1) {
		gun2:=1
		, sr301:=0
		, sprowler:=1
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, firstrun:=0
		, s2020:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s prowler")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=1
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, m2020:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m prowler")
	}
	akm:=true
	, m416:=false
	, uzi:=false
	, ump:=false
	, scar:=false
	, m16a4:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, m2020:=0
	, peacekeeper:=false
}

if GetKeyState(key_uzi) {
	if (sec = 1) {
		gun2:=1
		, sr301:=1
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, s2020:=0
		, firstrun:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s r301")
	}
	else {
		gun1:=1
		, mr301:=1
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, m2020:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m r301")
	}
	uzi:=true
	, m416:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, m16a4:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
}
	
if GetKeyState(key_groza) {
	if (sec = 1) {
		gun2:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, s2020:=0
		, firstrun:=0
		, salt:=1
		, shavoc:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s alternator")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, m2020:=0
		, malt:=1
		, mhavoc:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m alternator")
	}
	groza:=true
	, uzi:=false
	, m416:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, m16a4:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
}

if GetKeyState(key_m249) {
	m249hopup:=450
	if (sec = 1) {
		gun2:=1
		, shavoc:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, s2020:=0
		, firstrun:=0
		, salt:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s havoc")
	}
	else {
		gun1:=1
		, mhavoc:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, m2020:=0
		, malt:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m havoc")
	}
	sleep 20
	if GetKeyState(key_m249) {
		%Selected%("hop-up activated")
		m249hopup:=10
	}
	m249:=true
	, groza:=false
	, uzi:=false
	, m416:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, m16a4:=false
	, glock:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
}

if GetKeyState(key_vector) {
	if (sec = 1) {
		gun2:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=1
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, s2020:=0
		, firstrun:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s r99")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=1
		, mspitfire:=0
		, mscout:=0
		, m2020:=0
		, mflatline:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m r99")
	}
	vector:=true
	, m249:=false
	, groza:=false
	, uzi:=false
	, m416:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, m16a4:=false
	, glock:=false
	, skspubg:=false
	, mk14pubg:=false
	, Tgun:=false
	, peacekeeper:=false
}

if GetKeyState(key_skspubg) {
	if (sec = 1) {
		gun2:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=1
		, sflatline:=0
		, firstrun:=0
		, s2020:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		, speacekeeper:=0
		%Selected%("s scout")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=1
		, m2020:=0
		, mflatline:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m scout")
	}
	vector:=false
	, m249:=false
	, groza:=false
	, uzi:=false
	, m416:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, m16a4:=false
	, glock:=false
	, skspubg:=true
	, Tgun:=false
	, peacekeeper:=false
}

if GetKeyState(key_Tgun) {
	if (sec = 1) {
		gun2:=1
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, s2020:=0
		, firstrun:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=1
		, speacekeeper:=0
		%Selected%("s devotion")
	}
	else {
		gun1:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, m2020:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=1
		, mpeacekeeper:=0
		, firstrun:=0
		%Selected%("m devotion")
	}
	groza:=false
	, uzi:=false
	, m416:=false
	, akm:=false
	, scar:=false
	, ump:=false
	, m16a4:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=true
	, peacekeeper:=false
}
	
if GetKeyState(key_peacekeeper) {
	if (sec = 1) {
		gun2:=1
		, speacekeeper:=1
		, vpeaceslot:=2
		, sr301:=0
		, sprowler:=0
		, shemlock:=0
		, sr45:=0
		, svector:=0
		, sspitfire:=0
		, sscout:=0
		, sflatline:=0
		, firstrun:=0
		, s2020:=0
		, salt:=0
		, shavoc:=0
		, sdevotion:=0
		%Selected%("s peacekeeper")
	}
	else {
		gun1:=1
		, mpeacekeeper:=1
		, vpeaceslot:=1
		, mr301:=0
		, mprowler:=0
		, mhemlock:=0
		, mr45:=0
		, mvector:=0
		, mspitfire:=0
		, mscout:=0
		, mflatline:=0
		, m2020:=0
		, malt:=0
		, mhavoc:=0
		, mdevotion:=0
		, firstrun:=0
		%Selected%("m peacekeeper")
	}
	peacekeeper:=true
	, akm:=false
	, m416:=false
	, uzi:=false
	, ump:=false
	, scar:=false
	, m16a4:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, m2020:=0
}

if GetKeyState(key_Terminate) {
	sleep 2000
	ExitApp
}

if GetKeyState(key_RCoff) {
	firstrun:=1
	, akm:=false
	, uzi:=false
	, scar:=false
	, ump:=false
	, m416:=false
	, m16a4:=false
	, groza:=false
	, glock:=false
	, m249:=false
	, vector:=false
	, skspubg:=false
	, Tgun:=false
	, peacekeeper:=false
	, sr301:=0
	, sprowler:=0
	, shemlock:=0
	, sr45:=0
	, svector:=0
	, sspitfire:=0
	, sscout:=0
	, sflatline:=0
	, speacekeeper:=0
	, shavoc:=0
	, sdevotion:=0
	, mr301:=0
	, mprowler:=0
	, mhemlock:=0
	, mr45:=0
	, mvector:=0
	, mspitfire:=0
	, mscout:=0
	, mflatline:=0
	, mpeacekeeper:=0
	, mhavoc:=0
	, mdevotion:=0
	, m2020:=0
	, s2020:=0
	, malt:=0
	, salt:=0
	%Selected%("disabled")
}
	
{
isMouseShown() {
	StructSize := A_PtrSize + 16
	VarSetCapacity(InfoStruct, StructSize)
	NumPut(StructSize, InfoStruct)
	DllCall("GetCursorInfo", UInt, &InfoStruct)
	Result := NumGet(InfoStruct, 8)
	if Result > 1
		return 1
	else
		return 0
}
{
if isMouseShown() == 1		; checks if mouse cursor is visible and disables script
	disable:=false				; set to true for testing on desktop
else
	disable:=true
}

if GetKeyState(key_shoot) {
sauto:=1
if disable && disable2 {
	
if ump {							;RE-45 RECOIL
	loop {
		sleep, 10
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
			}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 8*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 8*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
			}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 3*modifier)
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 3*modifier)
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 3*modifier)
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 3*modifier)
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if akm {						;PROWLER RECOIL
	loop {
		sleep, 10
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
		sleep 1
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 9*modifier)1
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 9*modifier)2
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)3
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)4
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)5
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)6
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)7
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)8
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 4, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)9
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)10
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 9*modifier)11
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 9*modifier)12
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 9*modifier)13
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 9*modifier)14
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)15
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)16
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", -1*modifier)17
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 1*modifier)18
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 1*modifier)19
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 1
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 1*modifier)20
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 0*modifier)21
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 1*modifier)212
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 1*modifier)213
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 0*modifier)214
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 1*modifier)215
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 2*modifier)216
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 0*modifier)22
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 1*modifier)23
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if uzi {						;R301 RECOIL (by golfhjhj - 07/05/2019)
	loop {
		sleep, 10
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
		sleep 1
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 12*modifier)1
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 12*modifier)2
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)3
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)4
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)5
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 6*modifier)6
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)7
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)8
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)9
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 4*modifier)10
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)11
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)12
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)13
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)14
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)15
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)16
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)17
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)18
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 2*modifier)19
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 1
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", -8*modifier)20
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", -8*modifier)21
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", -6*modifier)22
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 0, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 0*modifier)23
		sleep 42
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if m416 {						;SPITFIRE RECOIL
	loop {
		sleep, 10
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
		sleep 1
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 14*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 2*modifier)
		sleep 1000
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if groza {						;ALTERNATOR RECOIL
	loop {
		sleep, 10
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
		sleep 10
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
		break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
		sleep 1000
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if glock {						;P2020 RECOIL
	loop {
		sleep, 10
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
		sleep 1
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 18*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 14*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 10*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 14*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 18*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 10*modifier)
		sleep 80
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if scar {						;FLATLINE RECOIL
	loop {
		sleep, 10
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
		sleep 1
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 18*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 18*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 18*modifier)
		sleep 20
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 120
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if m249 {						;HAVOC RECOIL (by MoDPOwer - 19/04/2019)
	loop {
		sleep, 10
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
		sleep %m249hopup%
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 17*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 17*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 17*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 15*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 15*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 15*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)	;10
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 7*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 5*modifier)	;20
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 5*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 5*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 5*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 5*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 5*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 5*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 5*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 5*modifier)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
		sleep 112
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		sleep 1000
	}
}

else if Tgun {						;DEVOTION RECOIL (by golfhjhj - 06/05/2019)
	loop {
		sleep, 10
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
		sleep 10
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 10*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 10, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 16*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 10, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 5, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 50, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 100, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 8, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 5, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 8, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -2, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -5*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -8, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -8, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -10, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -10, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -10, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -10, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -8, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, -10, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 2*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 2*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 2*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot)
{
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
		sleep 100
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
		sleep 1000
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if vector {					;R99 RECOIL (by golfhjhj - 07/05/2019)
	loop {
		DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)1
		sleep 1
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -9*modifier, "UInt", 11*modifier)2
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 11*modifier)3
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 14*modifier)4
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 7*modifier)5
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -5*modifier, "UInt", 15*modifier)6
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -7*modifier, "UInt", 10*modifier)7
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 12*modifier)8
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 10*modifier)9
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 12*modifier)10
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 10*modifier)11
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 10*modifier)12
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)13
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 8*modifier)14
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -5*modifier, "UInt", -2*modifier)15
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)16
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 5*modifier)17
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 5*modifier)18
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", -5*modifier)19
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", -5*modifier)20
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", -4*modifier)21
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 4*modifier)22
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)23
		sleep 63
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
		DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 5*modifier)24
		sleep 1000
		if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			break
		}
	}
}

else if m16a4 {						;HEMLOK RECOIL
	if (hemloksingle = 1) {				;HEMLOK AUTO-SINGLE
		loop {
			GetKeyState, state, lbutton, P
			if State = U
				break
			Send, {lbutton}
			Sleep, 10
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2.3*modifier)
		}
	}
	else {
		loop {
			sleep, 10
			DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
			sleep 1
			if !GetKeyState(key_shoot) {
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
			sleep 65
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
			sleep 65
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
			sleep 65
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
			sleep 65
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
			sleep 75
			if !GetKeyState(key_shoot) {
				DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
				break
			}
			DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
		}
	}
}

else if peacekeeper {				;PEACEKEEPER GLITCH
	loop {
		sleep, 10
		if GetKeyState(key_shoot) {
			peacekeeperglitch(vpeaceslot, key_x)
			Sleep, 40
		}
		break
	}
	sleep 100
}
}
}
else
{
sauto:=0
}
}
}

peacekeeperglitch(vpeaceslot, key_x) {
	Sleep, 10
	Send, {r Down}
	Sleep, 60
	Send, {r up}
	Sleep, 210
	Send, {%key_x% Down}
	Sleep, 30
	Send, {%key_x% Up}
	Sleep, 30
	Send, {%vpeaceslot% Down}
	Sleep, 30
	Send, {%vpeaceslot% Up}
	Sleep, 130
	return
}

Say(text) {
	global SAPI
	SAPI.Speak(text, 1)
	sleep 150
	return
}

Tooltip(Text) {
	activeMonitorInfo(X, Y, Width, Height)
	xPos := Width / 2 - 50
	yPos := Height / 2 + (Height / 10)
	Tooltip, %Text%, xPos, yPos
	SetTimer, RemoveTooltip, 500
	return
	RemoveTooltip:
		SetTimer, RemoveTooltip, Off
		Tooltip
		return
}

activeMonitorInfo( ByRef X, ByRef Y, ByRef Width,  ByRef  Height  ) {
	CoordMode, Mouse, Screen
	MouseGetPos, mouseX , mouseY
	SysGet, monCount, MonitorCount
	Loop %monCount%  {
		SysGet, curMon, Monitor, %a_index%
		if ( mouseX >= curMonLeft and mouseX <= curMonRight and mouseY >= curMonTop and mouseY <= curMonBottom ) {
			X      := curMonTop
			y      := curMonLeft
			Height := curMonBottom - curMonTop
			Width  := curMonRight  - curMonLeft
			return
		}
	}
}

lblPause:
	pause
	Return

label_mw1:
	if disable {
		vMWD:=1
		vMWU:=0
		Send, {WheelDown}
	}
	else {
		Send, {WheelDown 2}
	}
	return
	
label_mw2:
	if disable {
		vMWD:=0
		vMWU:=1
		Send, {WheelUp}
	}
	else {
		Send, {WheelUp 2}
	}
	return

IniRead:
	IfNotExist, settings.ini 
		{
		MsgBox, Couldn't find settings.ini. I'll create one for you.
		IniWrite, "F1", settings.ini, keybinds, key_prowler
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
		IniWrite, "F12", settings.ini, keybinds, key_havoc
		IniWrite, "", settings.ini, keybinds, key_devotion
		IniWrite, "9", settings.ini, keybinds, key_disable
		IniWrite, "Del", settings.ini, keybinds, key_terminate
		IniWrite, "1", settings.ini, keybinds, key_1
		IniWrite, "2", settings.ini, keybinds, key_2
		IniWrite, "0", settings.ini, keybinds, mwheel_1
		IniWrite, "0", settings.ini, keybinds, mwheel_2
		IniWrite, "4", settings.ini, keybinds, key_heal
		IniWrite, "G", settings.ini, keybinds, key_grenade
		IniWrite, "3", settings.ini, keybinds, key_holster
		IniWrite, "INS"`n, settings.ini, keybinds, key_pause
		IniWrite, "5.0", settings.ini, mouse settings, sens
		IniWrite, "1.0"`n, settings.ini, mouse settings, zoom_sens
		IniWrite, "80", settings.ini, voice settings, volume
		IniWrite, "7"`n, settings.ini, voice settings, rate
		IniWrite, "narrator", settings.ini, script configs, script_version
		IniWrite, "no-recoil.ahk"`n, settings.ini, script configs, script_name
		IniWrite, "", settings.ini, window position, gui_position
		IniRead, script_name, settings.ini, script configs, script_name
		Run, %script_name%
		}
	Else {
		IniRead, key_RCoff, settings.ini, keybinds, key_disable
		IniRead, key_Terminate, settings.ini, keybinds, key_terminate
		IniRead, key_1, settings.ini, keybinds, key_1
		IniRead, key_2, settings.ini, keybinds, key_2
		IniRead, mwheel_1, settings.ini, keybinds, mwheel_1
		IniRead, mwheel_2, settings.ini, keybinds, mwheel_2
		IniRead, key_4, settings.ini, keybinds, key_heal
		IniRead, key_g, settings.ini, keybinds, key_grenade
		IniRead, key_x, settings.ini, keybinds, key_holster
		IniRead, key_akm, settings.ini, keybinds, key_prowler
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
		IniRead, key_m249, settings.ini, keybinds, key_havoc
		IniRead, key_tgun, settings.ini, keybinds, key_devotion
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