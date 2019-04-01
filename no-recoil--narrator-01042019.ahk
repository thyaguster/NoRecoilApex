; Narrator Version (fullscreen) - 01042019
; use ahkhider.
#NoEnv
#SingleInstance force
#MaxThreadsBuffer on
SetTitleMatchMode, 2
#IfWinActive r5apex.exe
; HOTKEYS
key_RCoff:="9"			; disable key
key_Terminate:="Del"	; kill script
key_1:="1"				; weapon slot 1
key_2:="2"				; weapon slot 2
key_4:="4"				; heal key
key_g:="g"				; grenade key
key_x:="3"				; holster weapons key | peacekeeper glitch uses this, so be sure the right game key is set
key_freemode:="Home"	; on/off auto fire mode
key_akm:="F1"			; Wingman
key_m16a4:="F2"			; Hemlock
key_skspubg:="F3"		; Scout
key_uzi:="F4"			; R301
key_vector:="F5"		; R99
key_m416:="F6"			; Spitfire
key_scar:="F7"			; Flatline
key_ump:="F8"			; R45
key_groza:="F9"			; Alternator
key_glock:="F10"		; P2020
key_peacekeeper:="F11"	; Peacekeeper (glitch)

; SENSITIVITY
sens:=3.3				; your sensitivity
zoomsens:=1.0			; your zoom sensitivity
; VOICE
rate = 7				; 0 default, >0 to speed up, <0 to slow down
volume = 80				; range 0-100

;SAPI.voice := SAPI.GetVoices().Item(1) 	; uncomment this line to get female voice.
suspend:=on
gun1:=0
gun2:=0
sec:=0
FreeMode:=0
firstrun:=0
sauto:=0
key_shoot:="LButton"
key_zoom:="RButton"
modifier:=2.50/sens
SAPI := ComObjCreate("SAPI.SpVoice")
SAPI.rate := rate
SAPI.volume := volume
loop {
if GetKeyState(key_freemode)
{
if freemode = 1
{
freemode:=0
manualdisable:=1
SAPI.Speak("auto off")
sleep 150
}
else
{
freemode:=1
manualdisable:=0
SAPI.Speak("auto on")
sleep 150
}
}
if GetKeyState(key_1)
{
disable:=true
disable2:=true
sec:=0
if gun1 = 1
{
if firstrun = 1
{
m16a4:=false
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if	mhemlock = 1
{
if manualdisable = 0
{
FreeMode:=1
}
m16a4:=true
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m hemlock")
}
if	mr301 = 1
{
FreeMode:=0
uzi:=true
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m r301")
}
if  mr45 = 1
{
FreeMode:=0
ump:=true
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m r45")
}
if mwingman = 1
{
if manualdisable = 0
{
FreeMode:=1
}
akm:=true
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m wingman")
}
if mvector = 1
{
FreeMode:=0
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=true
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m r99")
}
if mspitfire = 1
{
FreeMode:=0
akm:=false
m416:=true
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m spitfire")
}
if mscout = 1
{
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=true
Tgun:=false
peacekeeper:=false
SAPI.Speak("m scout")
if manualdisable = 0
{
FreeMode:=1
}
}
if mflatline = 1
{
FreeMode:=0
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=true
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m flatline")
}
if m2020 = 1
{
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=true
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m p2020")
if manualdisable = 0
{
FreeMode:=1
}
}
if malt = 1
{
FreeMode:=0
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=true
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("m alternator")
}
if mpeacekeeper = 1
{
FreeMode:=0
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=true
SAPI.Speak("m peacekeeper")
}
}
}
if GetKeyState(key_2)
{
sec:=1
disable:=true
disable2:=true
{
if firstrun = 1
{
FreeMode:=0
m16a4:=false
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if	shemlock = 1
{
if manualdisable = 0
{
FreeMode:=1
}
m16a4:=true
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s hemlock")
}
if	sr301 = 1
{
uzi:=true
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s r301")
if manualdisable = 0
{
FreeMode:=1
}
}
if  sr45 = 1
{
FreeMode:=0
ump:=true
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s r45")
}
if swingman = 1
{
akm:=true
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s wingman")
if manualdisable = 0
{
FreeMode:=1
}
}
if svector = 1
{
FreeMode:=0
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=true
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s r99")
}
if sspitfire = 1
{
FreeMode:=0
akm:=false
m416:=true
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s spitfire")
}
if sscout = 1
{
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=true
Tgun:=false
peacekeeper:=false
SAPI.Speak("s scout")
if manualdisable = 0
{
FreeMode:=1
}
}
if sflatline = 1
{
FreeMode:=0
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=true
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s flatline")
}
if s2020 = 1
{
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=true
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s p2020")
if manualdisable = 0
{
FreeMode:=1
}
}
if salt = 1
{
FreeMode:=0
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=true
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
SAPI.Speak("s alternator")
}
if speacekeeper = 1
{
FreeMode:=0
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=true
SAPI.Speak("s peacekeeper")
}
}
}
if GetKeyState(key_x)
{
disable2:=false
loop {
if GetKeyState(key_1)
{
gun1:=1
disable2:=true
break
}
if GetKeyState(key_2)
{
gun2:=1
disable2:=true
break
}
}
}
if GetKeyState(key_g)
{
disable2:=false
loop {
if GetKeyState(key_1)
{
gun1:=1
disable2:=true
break
}
if GetKeyState(key_2)
{
gun2:=1
disable2:=true
break
}
}
}
if GetKeyState(key_4)
{
disable2:=true
}
if GetKeyState(key_ump)
{
if sec = 1
{
gun2:=1
sr301:=0
swingman:=0
shemlock:=0
sr45:=1
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
firstrun:=0
salt:=0
speacekeeper:=0
SAPI.Speak("s r45")
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=1
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m r45")
}
FreeMode:=0
ump:=true
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_glock)
{
if sec = 1
{
gun2:=1
gun1:=1
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
firstrun:=0
salt:=0
s2020:=1
speacekeeper:=0
SAPI.Speak("s p2020")
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
malt:=0
m2020:=1
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m p2020")
}
FreeMode:=0
glock:=true
ump:=false
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_m16a4)
{
if sec = 1
{
gun2:=1
gun1:=1
sr301:=0
swingman:=0
shemlock:=1
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
salt:=0
firstrun:=0
s2020:=0
speacekeeper:=0
SAPI.Speak("s hemlock")
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=1
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
malt:=0
m2020:=0
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m hemlock")
}
FreeMode:=1
m16a4:=true
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_scar)
{
if sec = 1
{
gun2:=1
gun1:=1
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=1
s2020:=0
firstrun:=0
salt:=0
speacekeeper:=0
SAPI.Speak("s flatline")
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
m2020:=0
mflatline:=1
malt:=0
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m flatline")
}
FreeMode:=0
scar:=true
m416:=false
uzi:=false
akm:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_m416)
{
if sec = 1
{
gun2:=1
gun1:=1
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=1
sscout:=0
sflatline:=0
firstrun:=0
s2020:=0
salt:=0
speacekeeper:=0
SAPI.Speak("s spitfire")
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
m2020:=0
mspitfire:=1
mscout:=0
mflatline:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m spitfire")
}
m416:=true
FreeMode:=0
ump:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_akm)
{
if sec = 1
{
gun2:=1
sr301:=0
swingman:=1
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
firstrun:=0
s2020:=0
salt:=0
speacekeeper:=0
SAPI.Speak("s wingman")
}
else
{
gun1:=1
mr301:=0
mwingman:=1
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
m2020:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m wingman")
}
akm:=true
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
m2020:=0
peacekeeper:=false
}
if GetKeyState(key_uzi)
{
if sec = 1
{
gun2:=1
sr301:=1
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
s2020:=0
firstrun:=0
salt:=0
speacekeeper:=0
SAPI.Speak("s r301")
}
else
{
gun1:=1
mr301:=1
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
m2020:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m r301")
}
uzi:=true
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_groza)
{
if sec = 1
{
gun2:=1
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
s2020:=0
firstrun:=0
salt:=1
speacekeeper:=0
SAPI.Speak("s alternator")
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
m2020:=0
malt:=1
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m alternator")
}
groza:=true
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_m249)
{
m249:=true
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_vector)
{
if sec = 1
{
gun2:=1
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=1
sspitfire:=0
sscout:=0
sflatline:=0
s2020:=0
firstrun:=0
salt:=0
speacekeeper:=0
SAPI.Speak("s r99")
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=1
mspitfire:=0
mscout:=0
m2020:=0
mflatline:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m r99")
}
vector:=true
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=false
mk14pubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_skspubg)
{
if sec = 1
{
gun2:=1
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=1
sflatline:=0
firstrun:=0
s2020:=0
salt:=0
speacekeeper:=0
SAPI.Speak("s scout")
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=1
m2020:=0
mflatline:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
SAPI.Speak("m scout")
}
vector:=false
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=true
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_Tgun)
{
Tgun:=true
vector:=false
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=false
peacekeeper:=false
}
if GetKeyState(key_peacekeeper)
{
if sec = 1
{
gun2:=1
speacekeeper:=1
vpeaceslot:=2
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
firstrun:=0
s2020:=0
salt:=0
SAPI.Speak("s peacekeeper")
}
else
{
gun1:=1
mpeacekeeper:=1
vpeaceslot:=1
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
m2020:=0
malt:=0
firstrun:=0
SAPI.Speak("m peacekeeper")
}
peacekeeper:=true
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
m2020:=0
}
if GetKeyState(key_Terminate)
{
sleep 2000
ExitApp
}
if GetKeyState(key_RCoff)
{
firstrun:=1
akm:=false
uzi:=false
scar:=false
ump:=false
m416:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
speacekeeper:=0
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
mpeacekeeper:=0
m2020:=0
s2020:=0
malt:=0
salt:=0
SAPI.Speak("disabled")
}
{
isMouseShown()
{
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
if GetKeyState(key_shoot)
{
sauto:=1
if disable && disable2
{
if ump
{
loop
{
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 8*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 8*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if akm
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 100
}
if uzi
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 12*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 12*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 6*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m416
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 14*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 2*modifier)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if groza
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
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
if !GetKeyState(key_shoot)
{
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
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if glock
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 18*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 18*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if scar
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 18*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 18*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 18*modifier)
sleep 20
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 120
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m249
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 34*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if Tgun
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 60*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 70*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if vector
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if skspubg
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 15
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
dllcall("mouse_event","UInt",0x02)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 900
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m16a4
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
}
}
else if peacekeeper
{
loop 
{
if GetKeyState(key_shoot)
{
peacekeeperglitch(vpeaceslot, key_x)
Sleep, 30
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
Send, {r Down}
Sleep, 50
Send, {r up}
Sleep, 200
Send, {%key_x% Down}
Sleep, 20
Send, {%key_x% Up}
Sleep, 20
Send, {%vpeaceslot% Down}
Sleep, 20
Send, {%vpeaceslot% Up}
Sleep, 120
return
}
activeMonitorInfo( ByRef X, ByRef Y, ByRef Width,  ByRef  Height  ) {
CoordMode, Mouse, Screen
MouseGetPos, mouseX , mouseY
SysGet, monCount, MonitorCount
Loop %monCount% {
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