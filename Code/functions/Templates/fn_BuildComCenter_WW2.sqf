//WW2 ComCenter
//FOB

// Eden Object composition to SQF
// Export file
// Script by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"
private ["_staticWeaponClasses", "_parkedVehicleClasses"];

private["_center","_rotation","_obj","_pos"];
_center = param[0];
_rotation = param[1];

if (count _this > 2) then { _staticWeaponClasses = _this select 2; } else { _staticWeaponClasses = []; };
if (count _this > 3) then { _parkedVehicleClasses = _this select 3; } else { _parkedVehicleClasses = []; };

[_center,25] call a3e_fnc_cleanupTerrain;

_fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];

    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_relativePos select 2)], _rotateDir] call A3E_fnc_rotatePosition);
    _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
    _object;
};

//Fix rotation
_rotation = _rotation + 180;

private _obj = objNull;
_obj = ["Land_Garbage_square5_F",_center,[0.71117,3.60274,0],_rotation,299.883] call _fnc_createObject;
_obj = ["Land_Garbage_square5_F",_center,[9.66161,9.02608,0],_rotation,344.883] call _fnc_createObject;
_obj = ["Land_Garbage_square5_F",_center,[13.4377,7.33126,0],_rotation,14.8835] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[2.56005,16.7316,0],_rotation,0.0864356] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[-12.4736,7.46016,0],_rotation,269.883] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[10.185,16.7473,0],_rotation,359.883] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[-12.1045,10.3361,0],_rotation,284.883] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[-0.314953,16.7258,0],_rotation,359.883] call _fnc_createObject;
_obj = ["Land_BagFenceCorner",_center,[-11.4839,12.2121,0],_rotation,269.883] call _fnc_createObject;
_obj = ["Land_BagFenceCorner",_center,[-12.0952,5.58614,0],_rotation,179.883] call _fnc_createObject;
_obj = ["Land_CratesWooden_F",_center,[8.38842,9.58858,0],_rotation,314.883] call _fnc_createObject;
_obj = ["Fort_Crate_wood",_center,[8.77977,8.14034,0],_rotation,44.8835] call _fnc_createObject;
_obj = ["Fort_Crate_wood",_center,[7.57787,7.7419,0],_rotation,44.8835] call _fnc_createObject;
_obj = ["AmmoCrates_NoInteractive_Small",_center,[-11.0317,-5.64384,0.133562],_rotation,90] call _fnc_createObject;
_obj = ["AmmoCrates_NoInteractive_Small",_center,[3.15477,-9.77421,0.133562],_rotation,15] call _fnc_createObject;
_obj = ["AmmoCrates_NoInteractive_Small",_center,[-9.78175,-10.1438,0.133562],_rotation,45] call _fnc_createObject;
_obj = ["Land_Sacks_heap_F",_center,[14.0933,-2.39384,0],_rotation,135] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[-0.0993772,10.2839,0],_rotation,194.998] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[-1.40675,11.1062,0],_rotation,285] call _fnc_createObject;
_obj = ["Land_Pallets_F",_center,[13.4956,8.58956,0],_rotation,254.883] call _fnc_createObject;
_obj = ["Land_Pallets_F",_center,[14.5007,6.09151,-0.0576739],_rotation,14.6529] call _fnc_createObject;
_obj = ["Land_WaterBarrel_F",_center,[-8.8717,-11.3067,-0.000999928],_rotation,315.126] call _fnc_createObject;
_obj = ["Land_WaterBarrel_F",_center,[-7.65675,-11.3938,-0.000999451],_rotation,119.991] call _fnc_createObject;
_obj = ["Barrel4",_center,[-9.65675,-1.64384,0],_rotation,315] call _fnc_createObject;
_obj = ["Barrel4",_center,[12.9026,-2.29618,0],_rotation,285] call _fnc_createObject;
_obj = ["Barrel4",_center,[13.0933,-3.14384,0],_rotation,30] call _fnc_createObject;
_obj = ["Barrel4",_center,[-9.2649,-0.818157,0],_rotation,165] call _fnc_createObject;
_obj = ["Barrel4",_center,[12.425,-2.86357,0],_rotation,285] call _fnc_createObject;
_obj = ["Barrel4",_center,[-8.69215,-1.262,0],_rotation,45] call _fnc_createObject;
_obj = ["Barrel4",_center,[-8.65675,-0.393841,0],_rotation,300] call _fnc_createObject;
_obj = ["Barrel4",_center,[3.08593,3.73262,0],_rotation,149.883] call _fnc_createObject;
_obj = ["Barrel4",_center,[2.3474,3.66719,0],_rotation,149.883] call _fnc_createObject;
_obj = ["Barrel4",_center,[11.4963,-3.19902,0],_rotation,285] call _fnc_createObject;
_obj = ["Barrel4",_center,[2.33471,4.35616,0],_rotation,254.883] call _fnc_createObject;
_obj = ["Land_Sack_F",_center,[9.34056,8.93966,0],_rotation,209.883] call _fnc_createObject;
_obj = ["Land_GarbagePallet_F",_center,[13.3703,6.89083,0],_rotation,14.8835] call _fnc_createObject;
_obj = ["Land_GarbagePallet_F",_center,[0.927723,3.47872,0],_rotation,299.883] call _fnc_createObject;
_obj = ["FoldTable",_center,[2.37645,9.99044,0],_rotation,344.883] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[10.8433,-10.7688,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[7.84325,-10.7688,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_CamoNet_EAST",_center,[11.3433,-9.01884,0],_rotation,345] call _fnc_createObject;
_obj = ["FoldChair",_center,[2.66478,10.8444,0],_rotation,44.8835] call _fnc_createObject;
_obj = ["FoldChair",_center,[1.76488,10.344,0],_rotation,329.883] call _fnc_createObject;
_obj = ["FoldChair",_center,[2.08812,9.13497,0],_rotation,134.883] call _fnc_createObject;
_obj = ["FoldChair",_center,[2.98851,9.63839,0],_rotation,164.883] call _fnc_createObject;
_obj = ["Barrel1",_center,[-11.2075,-2.28447,0],_rotation,120] call _fnc_createObject;
_obj = ["Barrel1",_center,[11.0603,-3.76298,0],_rotation,180] call _fnc_createObject;
_obj = ["Barrel1",_center,[-11.6567,-3.01884,0],_rotation,195] call _fnc_createObject;
_obj = ["Barrel1",_center,[12.3066,-3.53007,0],_rotation,180] call _fnc_createObject;
_obj = ["AmmoCrates_NoInteractive_Large",_center,[-12.4067,-4.89384,0],_rotation,90] call _fnc_createObject;
_obj = ["AmmoCrates_NoInteractive_Large",_center,[-12.5317,-6.26884,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_Vysilac_FM",_center,[0.96825,0.103718,-4.76837e-007],_rotation,89.8835] call _fnc_createObject;
_obj = ["MetalBarrel_burning_F",_center,[11.8433,-2.26884,0],_rotation,135] call _fnc_createObject;
_obj = ["Land_BagFenceEnd",_center,[13.4394,14.6286,0],_rotation,89.8835] call _fnc_createObject;
_obj = ["Land_BagFenceEnd",_center,[4.30931,16.6101,0],_rotation,29.8835] call _fnc_createObject;
_obj = ["Land_BagFenceEnd",_center,[-9.11036,12.717,0],_rotation,344.883] call _fnc_createObject;
_obj = ["Land_BagFenceEnd",_center,[-3.56056,14.594,0],_rotation,89.8835] call _fnc_createObject;
_obj = ["Land_BagFenceEnd",_center,[-9.59547,5.46602,0],_rotation,344.883] call _fnc_createObject;
_obj = ["Land_BagFenceEnd",_center,[8.43505,16.4939,0],_rotation,149.883] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[1.48095,-13.1351,0.10107],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[13.8433,-9.39384,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_artillery_nest",_center,[-10.032,-7.64384,0],_rotation,240] call _fnc_createObject;
_obj = ["Land_BagFenceRound",_center,[-2.93922,16.0954,0],_rotation,134.883] call _fnc_createObject;
_obj = ["Land_BagFenceRound",_center,[12.8113,16.1276,0],_rotation,224.883] call _fnc_createObject;
_obj = ["Land_BagFenceShort",_center,[-10.7197,5.33858,0],_rotation,359.883] call _fnc_createObject;
_obj = ["Land_BagFenceShort",_center,[-10.2346,12.5896,0],_rotation,359.883] call _fnc_createObject;
_obj = ["Land_CamoNetVar_NATO",_center,[5.19823,9.73702,0],_rotation,179.883] call _fnc_createObject;

_obj = ["LIB_FlagCarrier_GER",_center,[-12.164,4.48673,0],_rotation,271.009] call _fnc_createObject;
_obj forceFlagTexture A3E_VAR_Flag_Opfor;
_obj = ["fow_p_table04",_center,[2.9757,0.0561049,0],_rotation,179.362] call _fnc_createObject;
_obj setvariable ["A3E_isTerminal",true,true];
_obj allowDamage false;



if (count _staticWeaponClasses > 0) then {
    // Statics

    _gun = selectRandom _staticWeaponClasses;
	_obj = [_gun,_center,[-9.08501,9.07451,-0.0121183],_rotation,279.544] call _fnc_createObject;
	[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner;
	

};

if (count _parkedVehicleClasses > 0) then {
    // Cars
    _vehicle = selectRandom _parkedVehicleClasses;
	_obj = [_vehicle,_center,[17.8682,6.20822,0.0246086],_rotation,180.225] call _fnc_createObject;
    
    
    _vehicle = selectRandom _parkedVehicleClasses;
	_obj = [_vehicle,_center,[4.57002,-18.3835,0.0222197],_rotation,269.775] call _fnc_createObject;
};