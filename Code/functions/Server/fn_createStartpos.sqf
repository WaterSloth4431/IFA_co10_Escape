// Build start position
private _fenceRotateDir = random 360;

private _backPack = (selectRandom (missionNamespace getVariable ["a3e_arr_PrisonBackpacks", ["B_LIB_GER_Tonister34_cowhide"]])) createvehicle A3E_StartPos;

private _template = selectRandom(["a3e_fnc_Buildww2Prison1", "a3e_fnc_Buildww2Prison2", "a3e_fnc_Buildww2Prison3"]);

[A3E_StartPos, _fenceRotateDir, _backPack] remoteExec [_template, 0, true];

A3E_FenceIsCreated = true;
publicVariable "A3E_FenceIsCreated";

_backPack;

