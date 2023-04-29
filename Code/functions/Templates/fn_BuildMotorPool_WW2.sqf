private ["_center", "_rotation", "_staticWeaponClasses", "_parkedVehicleClasses", "_index"];
private ["_pos", "_dir", "_posX", "_posY", "_sectionDir", "_guns", "_gun", "_vehicle", "_powerGenerator","_static"];
private ["_fnc_CreateObject", "_parkedArmorClasses", "_armor", "_random", "_objectName", "_hqObject"];
private ["_obj", "_mNumber", "_sarmor", "_objpos", "_guardtower", "_staticAAClasses", "_newpos", "_aaemplacement", "_staticAA"];

if(isNil("A3E_MotorPoolMarkerNumber")) then {
    A3E_MotorPoolMarkerNumber = 0;
} else {
    A3E_MotorPoolMarkerNumber =A3E_MotorPoolMarkerNumber +1;
};

_mNumber = A3E_MotorPoolMarkerNumber;

_center           = [_this, 0] call bis_fnc_param;
_rotation            = [_this, 1] call bis_fnc_param;
_staticWeaponClasses  = [_this, 2, []] call bis_fnc_param;
_parkedVehicleClasses = [_this, 3, []] call bis_fnc_param;
_parkedArmorClasses   = [_this, 4, []] call bis_fnc_param;
_staticAAClasses      = [_this, 5, []] call bis_fnc_param;


_fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];
diag_log _className;
  
    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_centerPos select 2)], _rotateDir] call a3e_fnc_RotatePosition);
    _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
    _object;
};

_fnc_CreateVehicle = {
    private ["_className", "_relativePos", "_relativeDir", "_centerPos", "_rotateDir"];
    private ["_object", "_realPos", "_realDir"];
    
    _className = _this select 0;
    _relativePos = _this select 1;
    _relativeDir = _this select 2;
    _centerPos = _this select 3;
    _rotateDir = _this select 4;
	
    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1)], _rotateDir] call a3e_fnc_RotatePosition);
    _realDir = _relativeDir + _rotateDir;
    _object = createVehicle [_className, _realpos, [], 0, "NONE"];
    _object setDir _realDir;
	_object setPos _realPos;
    _object
};

[_center,50] call a3e_fnc_cleanupTerrain;

_obj = objNull;

_obj = ["LIB_FlagCarrier_GER",_center,[-21.6192,-5.38136,0],_rotation,270.415] call _fnc_createObject;
_obj setflagtexture A3E_VAR_Flag_Opfor;
_obj = ["Land_Garbage_square5_F",_center,[2.42705,-17.4697,0],_rotation,270.175] call _fnc_createObject;
_obj = ["Wire",_center,[-4.03974,20.8531,0],_rotation,0.251773] call _fnc_createObject;
_obj = ["Wire",_center,[9.89971,16.3316,0],_rotation,270.252] call _fnc_createObject;
_obj = ["Land_CratesWooden_F",_center,[14.8204,-11.5078,0],_rotation,270.175] call _fnc_createObject;
_obj = ["Land_MetalBarrel_F",_center,[-14.3171,-11.5107,1.43051e-006],_rotation,359.986] call _fnc_createObject;
_obj = ["Land_MetalBarrel_F",_center,[-13.3171,-11.3857,1.43051e-006],_rotation,29.9737] call _fnc_createObject;
_obj = ["Fort_Crate_wood",_center,[-15.5671,-3.01071,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[-8.17353,18.7466,0],_rotation,0.251773] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[-1.92402,18.7193,0],_rotation,0.251773] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[0.522267,6.45804,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[-5.04878,18.7325,0],_rotation,0.251773] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[7.00371,2.18021,0],_rotation,0.25178] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[8.2835,9.04886,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[-9.05879,16.5,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Barrel2",_center,[-18.488,-5.77585,0],_rotation,330] call _fnc_createObject;
_obj = ["Barrel2",_center,[-17.3476,-16.6215,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_PaperBox_closed_F",_center,[2.14287,5.45121,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_PaperBox_closed_F",_center,[2.57061,7.01908,0],_rotation,15.2518] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[14.439,-13.6313,1.43051e-006],_rotation,180.176] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[-14.8171,-16.5107,0],_rotation,270.002] call _fnc_createObject;
_obj = ["Land_PalletTrolley_01_khaki_F",_center,[3.22471,5.91979,-0.00191545],_rotation,132.248] call _fnc_createObject;
_obj = ["Land_CampingChair_V2_F",_center,[-18.9397,-15.8686,2.86102e-006],_rotation,345.008] call _fnc_createObject;
_obj = ["Land_CampingChair_V2_F",_center,[-19.9437,-16.1185,0.00275898],_rotation,0.0948441] call _fnc_createObject;
_obj = ["Land_CratesShabby_F",_center,[-13.4423,-16.6357,0],_rotation,105] call _fnc_createObject;
_obj = ["Land_GarbagePallet_F",_center,[2.67705,-17.4707,0],_rotation,270.175] call _fnc_createObject;
_obj = ["CUP_A1_fuelstation_army",_center,[-12.9421,-9.3862,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_CamoNetVar_EAST",_center,[4.18657,15.4419,0.17834],_rotation,270.252] call _fnc_createObject;
_obj = ["Hhedgehog_concrete",_center,[-17.3259,12.6617,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Hhedgehog_concrete",_center,[-17.3657,3.53665,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Hhedgehog_concrete",_center,[-5.13374,27.8584,0],_rotation,180.252] call _fnc_createObject;
_obj = ["Hhedgehog_concrete",_center,[3.99126,27.8179,0],_rotation,180.252] call _fnc_createObject;
_obj = ["Land_BagBunker_Large_F",_center,[4.30767,14.5674,0.17834],_rotation,180.252] call _fnc_createObject;
_obj = ["Land_Ind_TankSmall2",_center,[-7.56709,-6.26071,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[20.3355,-6.77487,0],_rotation,105.175] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[8.25786,3.17386,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[19.9517,-9.6484,0],_rotation,90.1753] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-22.9421,-17.7607,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[15.3501,-1.75924,0],_rotation,345.175] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[0.511281,3.95804,0],_rotation,270.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[8.26983,5.92386,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-8.44209,-13.3857,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-9.07246,13.3755,0],_rotation,270.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[15.0303,-24.6333,0],_rotation,195.175] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[0.0354507,9.46048,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[20.0459,-19.6484,0],_rotation,75.1753] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-21.6921,-7.88571,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-9.24751,2.00101,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_CamoNet_EAST",_center,[-16.6921,-15.3862,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[-25.6921,-15.0107,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[3.24956,1.32132,0],_rotation,180.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[19.5984,-2.52243,0],_rotation,45.1753] call _fnc_createObject;
_obj = ["Land_WoodenTable_large_F",_center,[-19.437,-16.6696,0.0956907],_rotation,90.4715] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[-6.16841,-9.44088,0],_rotation,15] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[-15.4421,-11.5107,0],_rotation,150] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[-16.8171,-4.63571,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[-5.68867,-8.74704,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-16.4421,-19.8857,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[7.9207,-19.6113,0],_rotation,0.175334] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[7.4627,-5.85983,0],_rotation,180.175] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-10.9731,7.63431,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[18.0662,-12.8925,0],_rotation,270.175] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[-7.88447,-0.754361,0],_rotation,0.25179] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[-22.9421,-10.8857,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[-9.69209,-16.3857,0],_rotation,270] call _fnc_createObject;
_obj = ["Hedgehog",_center,[6.61284,-1.31881,0],_rotation,120.252] call _fnc_createObject;
_obj = ["Hedgehog",_center,[5.23906,-1.06295,0],_rotation,30.2518] call _fnc_createObject;
_obj = ["Hedgehog",_center,[6.74517,0.305698,0],_rotation,255.252] call _fnc_createObject;
_obj = ["Barrel3",_center,[14.9505,-9.88278,0],_rotation,285.175] call _fnc_createObject;


// Statics 

if (count _staticWeaponClasses > 0) then {
    // Gun behind sandbags
    _pos = [17.7388,-22.2168,-0.0121193];
    _dir = 137.132;
    
    _guns = _staticWeaponClasses;
    _gun = selectRandom _guns;
    _static = [_gun, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
	[_static,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
};

// Armor
_armor = selectRandom _parkedArmorClasses;

if (count _parkedArmorClasses > 0) then {

    _pos = [7.40445,-12.7375,-0.00190258];
    _dir = 270;
    
    _sarmor = [_armor, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
	
	_sarmor setfuel random [0.05, 0.10, 0.15];
	_sarmor setdamage random [0.25, 0.5, 0.9];
	_sarmor setVehicleAmmo random [0, 0.5, 1];

};
// setVehicleAmmo cannot be used until Ammo Depots rearm all vehicles


// Vehicles
if (count _parkedVehicleClasses > 0) then {
    // Cars
    _pos = [14.8031,7.8694,0.0209951];
    _dir = 0;
    
    _vehicle = selectRandom _parkedVehicleClasses;
    _stupidvehicle = [_vehicle, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
	
	_stupidvehicle setfuel random 1;
	_stupidvehicle setdamage random [0, 0.2, 0.5];
	_stupidvehicle setVehicleAmmo random [0, 0.5, 1];
};

_random = random 1;
if (_random > .5 ) then {
    _pos = [-16.7078,-24.6357,0.0223036];
    _dir = 90;
    
    _vehicle = selectRandom _parkedVehicleClasses;
    _stupidvehicle = [_vehicle, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
	
	_stupidvehicle setfuel random 1;
	_stupidvehicle setdamage random [0, 0.2, 0.5];
	_stupidvehicle setVehicleAmmo random [0, 0.5, 1];
};
if (_random > .75) then {
    _pos = [-3.82699,9.58914,0.0160084];
    _dir = 180;
   
     _vehicle = selectRandom _parkedVehicleClasses;
    _stupidvehicle = [_vehicle, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
	
	_stupidvehicle setfuel random 1;
	_stupidvehicle setdamage random [0, 0.2, 0.5];
	_stupidvehicle setVehicleAmmo random [0, 0.5, 1];
};

["A3E_MotorPoolMapMarker" + str _mNumber,_center,"o_service"] call A3E_fnc_createLocationMarker;

_marker = createMarkerLocal ["A3E_MotorPoolPatrolMarker" + str _mNumber, _center];
_marker setMarkerShapeLocal "RECTANGLE";
_marker setMarkerAlphaLocal 0;
_marker setMarkerSizeLocal [40, 38];


