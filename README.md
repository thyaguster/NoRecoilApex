# NoRecoilApex
AutoHotkey No-Recoil Script for Apex Legends


I am currently maintaining two versions and testing one:

Narrator Version:
- This version has a tiny man included in the code, he will talk to you anytime you select a new weapon or cycle between them.
You can set his voice speed and volume on section ;VOICE.
- Works in fullscreen

Tooltip Version:
- This version shows a little on-screen box with the name of the weapon you selected.
- Only works on borderless.

Narrator ShortWords Version:
- Same as Narrator Version, but saying 3 instead of r301, 9 for r99, P for Peacekeeper...etc.
- This is mainly to test script speed when cycling weapons. I'll decide later if I'll maintain it or not.



NOTES:
- Don't forget to edit the script and change the sensitivity value to suit your needs.
- If you don't use default game keybinds be sure to check the script's ;HOTKEYS section and edit the keys accordingly.


AHK Hider is recommended to hide ahk scripts, I believe it was made by tgottie.
It's already included in the folder.

Some anti-virus might delete ahk hider dll files.
Your final folder should look like the one below.
https://prnt.sc/n59k1e


HOW TO:
1. Run no-recoil script. (Only run one version, either tooltip or narrator)
2. Run ahkhider.ahk
3. Play.

; HOTKEYS
    key_RCoff:="9"			; disable key
    key_Terminate:="Del"	; kill script
    key_1:="1"				; weapon slot 1
    key_2:="2"				; weapon slot 2
    key_4:="4"				; heal key
    key_g:="g"				; grenade key
    key_x:="3"				; holster weapons key | peacekeeper glitch uses this, so be sure the right game key is set
    key_freemode:="N"		; on/off auto fire mode
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
    

Latest Changes: - 01/04/2019
All versions:
Fixed a bug on Peacekeeper glitch.
Changed auto-fire keybind to "Home" instead of "N".


Previous changes:
-- Made some code changes on voices function, should be quicker now when cycling between weapons.
-- Reworked Peacekeeper glitch again, now it uses holster key instead of slot 2 key.
-- Script now pauses when you open inventory
-- Script wont work if you are on the desktop
-- Peacekeeper glitch reworked
-- Fixed Problem where script closed itself
-- Script now pauses when you equip grenades
-- Script now pauses when you holster weapons
