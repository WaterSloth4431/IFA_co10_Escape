_onScreenTime = 5;

sleep 13; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Welcome!"; //In yellow
_role1names = [profileName]; //In white
_role2 = "Info:";
_role2names = ["Welcome to the IFA Escape Server!"]; 
_role3 = "Keybinds:";
_role3names = ["Shift + V for enhanced movement."]; 
_role4 = "Keybinds:";
_role4names = ["Ace self interact to change view distance settings and repack mags."]; 
_role5 = "Keybinds:";
_role5names = ["Keybind can be changed in controls > configure addons."];
_role6 = "Community Info";
_role6names = ["Open map, then go to Community Info tab for Discord Link"];
_role7 = "Good Luck!";
_role7names = ["Good luck on your escape!"]; 

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]
];