Latest version 2.2 - 01/05/2019

Narrator Version:
- This version has a tiny man included in the code, he will talk to you anytime you select a new weapon or cycle between them.
You can set his voice speed and volume on "settings.ini" or by using the included GUI.
- Works in fullscreen
- This is the default selected script.

Known Issues:
- It will sometimes double-speak the name of the weapon. This doesn't have any effect on script functionality. Will fix it later.
- Rarely the script will not stop firing, press LMB to stop it.


Tooltip Version:
- This version shows a little on-screen box with the name of the weapon you selected.
- Only works on borderless.



NOTES:
- Now there's only one script, you can still chose between Narrator or Tooltip by going to Settings.
- If you don't use default game keybinds configure them on Settings.
- The script can still be used without the GUI, all configs are now in setttings.ini. You can manually edit it.


AHK Hider is recommended to hide ahk scripts, I believe it was made by tgottie.

Some anti-virus might delete ahk hider dll files.
Your final folder should look like the one below.
https://prnt.sc/n59k1e

HOW TO:

If you use GUI:
1. Run gui.ahk.
2. Press Start.
3. Press the 1 or 2 to select a weapon slot. Press the F# key configured for that weapon.
4. Play.

If you don't use GUI:
1. Run no-recoil script.
2. Run ahkhider.ahk
4. Press the 1 or 2 to select a weapon slot. Press the F# key configured for that weapon.
5. Play.

You can have two recoils set, one for each weapon.



Latest Changes - 01052019
-- Added Havoc Turbocharger. (To enable Turbocharger double press your Havoc F# key quickly.)
-- Added recoil for Hemlok single fire. (To enable Hemlok single fire double press your Hemlok F# key quickly.)
-- Added recoil for Devotion.
-- Fixed an error on Havoc selection.


Previous changes:
- Fixed the issue brought by last update where you had to press multiple times to select a weapon.
- Updated Havoc recoil pattern. (thanks to MoDPOwer)
- Added Havoc. (still needs work, but I have limited time now.)
- Fixed an issue where an unassigned weapon slot would assume the same recoil as the other slot.
- Fixed a bug in auto-fire code.
- Reworked holster/grenade key so it only stops the recoil control and not the entire script. (You still have to press 1/2 to get the recoil back)
- Added Pause Key, default is "INS".
- Reduced CPU usage drastically. (thanks to harahara)
- Replaced R99 recoil pattern. (thanks to harahara)
- Several changes to code, hope it's faster.
- Script now will try to run as Admin by default. (fixes issues for some people)
- Removed DPI option from GUI.
- Added asynchronous speech to Narrator. Voice shouldn't halt the script anymore.
- Fixed some code errors.
- Added GUI.
- Settings/Hotkeys are now saved in settings.ini.
- There is only one script now, you can still chose to use Narrator or Tooltip through Settings.
- Fixed some code errors on peacekeeper glitch.
- Fixed some general code errors.
- Changed auto-fire keybind to "Home" instead of "N".
- Reworked Peacekeeper glitch
- Made some code changes on voices function, should be quicker now when cycling between weapons(narrator).
- Script now pauses when you open inventory
- Script wont work if you are on the desktop
- Peacekeeper glitch reworked
- Fixed Problem where script closed itself
- Script now pauses when you equip grenades
- Script now pauses when you holster weapons
