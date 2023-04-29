params["_pos","_count"];

private _possibleInfantryTypes = missionNamespace getvariable ["A3E_UNITS_civilian_InfantryTypes",["LIB_CIV_Citizen_4","LIB_CIV_Functionary_4","LIB_CIV_SchoolTeacher","LIB_CIV_Villager_2","LIB_CIV_Villager_3","LIB_CIV_Woodlander_1","LIB_CIV_Woodlander_4","LIB_CIV_Worker_2","LIB_CIV_SchoolTeacher_2","LIB_CIV_Doctor","LIB_CIV_Priest","LIB_CIV_Rocker","LIB_CIV_Assistant"]];
private _side = civilian;

if(count _possibleInfantryTypes <= 0) then {
	["Escape warning: Infantry array for village initialization is empty. A3E_UNITS_civilian_InfantryTypes may contain an error.",["Spawning","ERROR"]] call a3e_fnc_log;
};

private _unitArray = _possibleInfantryTypes;

//Create a Group
private _group = creategroup _side;

["Creating civ group.",["Spawning"],[_side, _group]] call a3e_fnc_log;

for "_x" from 1 to _count do {
   private _unit = _group createUnit [selectRandom _unitArray, _pos, [], 0, "FORM"];
   [_unit] call A3E_fnc_onCivilianSpawn;
};
["Creating civ group with "+str (_count) +" units.",["Spawning"],[_side, units _group]] call a3e_fnc_log;
[_group] call A3E_fnc_onCivilianGroupSpawn;
_group