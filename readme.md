#IFA3 co10 Escape

![My project-1](https://user-images.githubusercontent.com/130827866/235587282-04b4f8b5-7ec4-449b-906d-6018f95876fe.jpg)


Required Mods:
- CBA_A3
- IFA3 AIO

- Faces of War
- Cup Terrains - Core

Highly Suggested Mods:
- ACE (No Medical) IFA3 Co10 Escape (my version - https://steamcommunity.com/sharedfiles/filedetails/?id=2969453305)
	- Mod includes ifa3 ace compat
- Enhanced Movement
- DUI Squad Radar
- Discord rich presence (https://steamcommunity.com/sharedfiles/filedetails/?id=1493485159)

Changes made from orginal mission:

- 13 ww2 themed new templates added
	- 4 start prisons
	- 5 ammo depots
	- 2 com centers (changed com object to radio on table)
	- 1 motor pool
	- 1 mortor pit
	- removed roadblocks (for now)

- Added IFA3 Staszow, Nievelle and Northern Fronts Terrains Svartmarka, Svartmarka Winter and Vinjesvingen

- changed starting backpack to IFA3 backpack

- limited intel found on bodies to Files,FileTopSecret,FilesSecret,DocumentsSecret,Wallet_ID
		- removed FlashDisk,FileNetworkStructure,MobilePhone,SmartPhone

- Changed civilian classnames to IFA3 civilians

- Updated exsisting IFA3 unitclasses to add more IFA items to Ammo depots (detonators, det cord, etc)

- updated stingtable.xml to change "hack terminal" to "Call in Evac" when interacting with data terminal at com center
	- and "Hacking Terminal" to "Using Radio"

- added 3 additional scripts
	- discord rich presence script
		- added functionality with this mod https://gist.github.com/ConnorAU/b44448714e7ac46715d6959be8dd4240
		- gets map name, and number of players, status updates upon escape start
		
	- Intro script

	- Time manager script
		- checks for night time and skips to morning
	
	- TAW view distance script (ace compatible)

- edited compiler configs to only build ww2 missions

- Suggestions
	- turn add nvg and tws scope param off, or it will add nvg's to your ww2 dudes -_-


Installation:

- All fully comaptible ww2 Escape Missions have been compiled and zipped in WW2 Missions.zip
	- params have been set for best expierance IMO, but if you wish to change them, unpack the pbo and edit the includes/params.hpp
	- Edit the Intro.sqf script to your liking in Scripts/Intro.sqf
	- If you are not running -Filepatching on your server with your cbasettings.sqf in userconfig file then you can add you cbasettings to the missionfile, my current cbasettings.sqf is in the Editing_and_Porting folder if you wish to use those. Simple replace the cbasettings.sqf in the missionfile and repack.

- You can also clone the repository and run the escapecompiler in Editing_and_Porting\Tools\Compiler if you would like all the available ww2 missions/maps. (note only the 5 recently ported maps (IFA3 Staszow, Nievelle and Northern Fronts Terrains Svartmarka, Svartmarka Winter and Vinjesvingen) are fully compatible with ww2 escape. You may get a heli extract on other maps.

Tools:

- Pbo manager 
	https://github.com/winseros/pboman3/releases/download/v1.5.0/PBOManager-installer-1.5.0-122.273776a.zip


![aow_winners_blog_13](https://user-images.githubusercontent.com/130827866/235587373-607c8dc0-3533-4a64-8cc7-e4d73a397696.jpg)
