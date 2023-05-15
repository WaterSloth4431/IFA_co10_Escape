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
_obj = ["Land_Garbage_square5_F",_center,[-3.56168,-2.8699,0],_rotation,314.984] call _fnc_createObject;
_obj = ["Land_CratesWooden_F",_center,[-15.9076,7.98166,0],_rotation,267.081] call _fnc_createObject;
_obj = ["Land_Sacks_heap_F",_center,[7.61971,-10.5716,0],_rotation,135] call _fnc_createObject;
_obj = ["Land_Sacks_heap_F",_center,[-16.1486,5.34055,0],_rotation,265.642] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[9.91244,-10.5511,0],_rotation,285] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[11.2198,-11.3733,0],_rotation,194.998] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[-3.67325,12.154,0],_rotation,194.998] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[-5.28716,-4.22543,0.411251],_rotation,195.26] call _fnc_createObject;
_obj = ["Land_CampingChair_V2_F",_center,[-12.3027,0.4836,6.58035e-005],_rotation,57.0857] call _fnc_createObject;
_obj = ["Land_CampingChair_V2_F",_center,[-11.8212,1.39498,0.0016923],_rotation,117.052] call _fnc_createObject;
_obj = ["Land_CampingChair_V2_F",_center,[-12.9318,2.39864,-1.43051e-006],_rotation,297.088] call _fnc_createObject;
_obj = ["Land_CampingChair_V2_F",_center,[-13.4164,1.48966,1.00136e-005],_rotation,312.109] call _fnc_createObject;
_obj = ["Land_WaterBarrel_F",_center,[-15.9472,3.84884,5.72205e-006],_rotation,267.076] call _fnc_createObject;
_obj = ["Land_WaterBarrel_F",_center,[-4.8715,-12.094,0],_rotation,119.991] call _fnc_createObject;
_obj = ["Land_WaterBarrel_F",_center,[-3.58145,14.7816,0.0130715],_rotation,120.037] call _fnc_createObject;
_obj = ["Barrel4",_center,[6.42904,-10.4739,0],_rotation,285] call _fnc_createObject;
_obj = ["Barrel4",_center,[2.4056,14.3132,0],_rotation,105] call _fnc_createObject;
_obj = ["Barrel4",_center,[6.61971,-11.3216,0],_rotation,30] call _fnc_createObject;
_obj = ["Barrel4",_center,[3.17513,14.7165,0],_rotation,0] call _fnc_createObject;
_obj = ["Barrel4",_center,[5.9515,-11.0413,0],_rotation,285] call _fnc_createObject;
_obj = ["Barrel4",_center,[5.02279,-11.3767,0],_rotation,285] call _fnc_createObject;
_obj = ["Barrel4",_center,[2.5035,15.031,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_CratesShabby_F",_center,[-16.3647,9.58518,0],_rotation,72.0809] call _fnc_createObject;
_obj = ["Land_Sack_F",_center,[-15.4242,5.87815,0],_rotation,192.081] call _fnc_createObject;
_obj = ["Land_GarbagePallet_F",_center,[-3.38444,-3.04617,0],_rotation,314.984] call _fnc_createObject;
_obj = ["AmmoCrate_NoInteractive_",_center,[-2.3715,14.781,0],_rotation,90] call _fnc_createObject;
_obj = ["AmmoCrates_NoInteractive_Medium",_center,[-1.3715,14.281,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_Sack_EP1",_center,[-15.2736,5.26145,0],_rotation,342.081] call _fnc_createObject;
_obj = ["Land_CamoNetVar_EAST",_center,[-1.37174,12.531,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[14.7537,-5.59402,0],_rotation,255] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-9.05216,6.07785,0],_rotation,267.081] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-9.20426,9.07444,0],_rotation,267.081] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[12.5037,6.90598,0],_rotation,255] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[15.1285,-8.46902,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[11.4478,9.55979,0],_rotation,240] call _fnc_createObject;
_obj = ["Land_CamoNet_EAST",_center,[-15.255,5.01096,0],_rotation,267.081] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[-14.9711,14.1618,0],_rotation,357.081] call _fnc_createObject;
_obj = ["Land_WoodenTable_large_F",_center,[-12.6585,1.45653,0.0858178],_rotation,39.1623] call _fnc_createObject;
_obj = ["Barrel1",_center,[1.01888,15.0329,0],_rotation,210] call _fnc_createObject;
_obj = ["Barrel1",_center,[1.82919,14.9729,0],_rotation,255] call _fnc_createObject;
_obj = ["Barrel1",_center,[5.83309,-11.7078,0],_rotation,180] call _fnc_createObject;
_obj = ["Barrel1",_center,[4.58675,-11.9407,0],_rotation,180] call _fnc_createObject;
_obj = ["Barrel1",_center,[1.31551,14.2956,0],_rotation,30] call _fnc_createObject;
_obj = ["Barrel1",_center,[9.76327,2.28049,0],_rotation,90] call _fnc_createObject;
_obj = ["Barrel1",_center,[10.2535,2.90598,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_Vysilac_FM",_center,[-1.88468,-4.54666,-4.76837e-007],_rotation,269.984] call _fnc_createObject;
_obj = ["MetalBarrel_burning_F",_center,[5.36971,-10.4466,0],_rotation,135] call _fnc_createObject;
_obj = ["MetalBarrel_burning_F",_center,[10.5035,2.28098,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-2.1215,-15.219,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-11.1313,-8.8367,0],_rotation,75] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-19.2438,4.68235,0],_rotation,87.0809] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-1.4965,18.031,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[7.5035,-15.219,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[12.0726,3.68479,0],_rotation,255] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[13.8785,-11.469,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[8.82259,10.9348,0],_rotation,135] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[-10.7306,12.0007,0],_rotation,177.081] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[13.1285,-2.71902,0],_rotation,180] call _fnc_createObject;
_obj = ["Barrels",_center,[-6.17692,-2.26541,0],_rotation,44.9843] call _fnc_createObject;

_obj = ["LIB_FlagCarrier_GER",_center,[-10.7132,11.7702,0],_rotation,0] call _fnc_createObject;
_obj forceFlagTexture A3E_VAR_Flag_Opfor;
_obj = ["fow_p_table04",_center,[-3.50478,-8.27118,0],_rotation,179.362] call _fnc_createObject;
_obj setvariable ["A3E_isTerminal",true,true];
_obj allowDamage false;



if (count _staticWeaponClasses > 0) then {
    // Statics

    _gun = selectRandom _staticWeaponClasses;
	_obj = [_gun,_center,[8.51214,5.93038,-0.0121188],_rotation,48.9037] call _fnc_createObject;
	[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner;

    _gun = selectRandom _staticWeaponClasses;
    _obj = [_gun,_center,[10.9139,-6.727,-0.0121188],_rotation,90.7092] call _fnc_createObject;
    [_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner;
	

};

if (count _parkedVehicleClasses > 0) then {
    // Cars
    _vehicle = selectRandom _parkedVehicleClasses;
	_obj = [_vehicle,_center,[-17.4694,-13.1353,0.0219598],_rotation,9.68925e-005] call _fnc_createObject;
    
    
};