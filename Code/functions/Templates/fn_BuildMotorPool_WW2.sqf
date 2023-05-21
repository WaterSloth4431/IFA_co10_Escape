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

_obj = ["Fort_Crate_wood",_center,[-13.9458,-2.80585,0],_rotation,270] call _fnc_createObject;
_obj = ["LIB_FlagCarrier_GER",_center,[-7.09956,-0.774261,0],_rotation,229.96] call _fnc_createObject;

_obj = ["Land_Ind_TankSmall2",_center,[-5.94585,-6.05585,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_WW2_CamoNet_Tank",_center,[7.87207,-9.74192,0],_rotation,90.0859] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[20.3303,-3.9822,0],_rotation,105.175] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-7.47354,16.6123,0],_rotation,270.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[19.9465,-6.85573,0],_rotation,90.1753] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[15.3449,1.03343,0],_rotation,345.175] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-7.45122,13.5804,0],_rotation,270.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[1.91336,6.96187,0],_rotation,81.7992] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[1.65669,9.66534,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[9.89106,6.12872,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-7.62627,2.20587,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-6.82085,-13.1808,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[8.8193,3.58029,0],_rotation,142.233] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[15.0251,-21.8406,0],_rotation,195.175] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[20.0407,-16.8557,0],_rotation,75.1753] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-21.3208,-17.5558,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[9.88908,9.21853,0],_rotation,90.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[2.13252,4.1629,0],_rotation,270.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-20.0708,-7.68085,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_CamoNet_EAST",_center,[-15.0708,-15.1813,0],_rotation,180] call _fnc_createObject;

_obj = ["Land_WoodenTable_large_F",_center,[-17.8206,-16.4622,0.101854],_rotation,90.1707] call _fnc_createObject;
_obj = ["Land_Setka_Car",_center,[-12.899,10.62,0],_rotation,269.934] call _fnc_createObject;
_obj = ["Land_Setka_Car",_center,[16.3386,11.2583,0],_rotation,269.872] call _fnc_createObject;
_obj = ["babe_helper",_center,[0,0,-5],_rotation,0] call _fnc_createObject;
_obj = ["Land_Garbage_square5_F",_center,[2.42181,-14.677,0],_rotation,270.175] call _fnc_createObject;
_obj = ["Land_CratesWooden_F",_center,[14.8151,-8.71511,0],_rotation,270.175] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[-13.1958,-16.3058,-4.76837e-007],_rotation,270.002] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[14.4338,-10.8386,0],_rotation,180.176] call _fnc_createObject;
_obj = ["Land_CampingChair_V2_F",_center,[-18.3191,-15.9081,0.00164127],_rotation,0.0555936] call _fnc_createObject;
_obj = ["Land_CampingChair_V2_F",_center,[-17.3184,-15.6638,-1.90735e-006],_rotation,345.008] call _fnc_createObject;
_obj = ["Land_CratesShabby_F",_center,[-11.8211,-16.4308,0],_rotation,105] call _fnc_createObject;
_obj = ["Land_GarbagePallet_F",_center,[2.67181,-14.678,0],_rotation,270.175] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[-8.07085,-16.1808,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[-21.3208,-10.6808,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[-6.26323,-0.549501,0],_rotation,0.25179] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[18.061,-10.0999,0],_rotation,270.175] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[7.91546,-16.8186,0],_rotation,0.175334] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-14.8208,-19.6808,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-9.35185,7.83917,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[7.45745,-3.06716,0],_rotation,180.175] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-3.48314,20.7823,-0.390856],_rotation,178.743] call _fnc_createObject;
_obj = ["Land_CamoNetVar_EAST",_center,[5.80781,15.6468,0],_rotation,270.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[4.8708,1.52618,0],_rotation,180.252] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[19.5932,0.270245,0],_rotation,45.1753] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[-24.0708,-14.8058,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[19.2773,-21.1038,0],_rotation,135.175] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[-13.8208,-11.3058,0],_rotation,150] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[-15.1958,-4.43085,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[-4.54717,-9.23602,0],_rotation,15] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[-4.06743,-8.54218,0],_rotation,90] call _fnc_createObject;
_obj = ["Wire",_center,[11.5209,16.5364,0],_rotation,270.252] call _fnc_createObject;
_obj = ["Wire",_center,[-2.4185,21.0579,0],_rotation,0.251773] call _fnc_createObject;
_obj = ["Land_MetalBarrel_F",_center,[-12.6959,-11.3058,1.43051e-006],_rotation,359.986] call _fnc_createObject;
_obj = ["Land_MetalBarrel_F",_center,[-11.6959,-11.1808,1.43051e-006],_rotation,29.9737] call _fnc_createObject;
_obj = ["Barrel2",_center,[-16.8667,-5.57099,0],_rotation,330] call _fnc_createObject;
_obj = ["Barrel2",_center,[-15.7264,-16.4167,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_PaperBox_closed_F",_center,[3.32835,7.57103,0],_rotation,15.2518] call _fnc_createObject;
_obj = ["Land_PaperBox_closed_F",_center,[3.44331,5.71367,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Hhedgehog_concrete",_center,[-18.5869,11.8012,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Hhedgehog_concrete",_center,[-18.6266,2.67621,0],_rotation,90.2518] call _fnc_createObject;
_obj = ["Hhedgehog_concrete",_center,[6.25192,25.0048,0],_rotation,180.252] call _fnc_createObject;
_obj = ["Hhedgehog_concrete",_center,[-2.87308,25.0453,0],_rotation,180.252] call _fnc_createObject;
_obj = ["CUP_A1_fuelstation_army",_center,[-11.3208,-9.18134,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_BagBunker_Large_F",_center,[5.92891,14.7723,0],_rotation,180.252] call _fnc_createObject;
_obj = ["Hedgehog",_center,[8.23408,-1.11395,0],_rotation,120.252] call _fnc_createObject;
_obj = ["Hedgehog",_center,[8.36641,0.510557,0],_rotation,255.252] call _fnc_createObject;
_obj = ["Hedgehog",_center,[6.8603,-0.858095,0],_rotation,30.2518] call _fnc_createObject;
_obj = ["Barrel3",_center,[14.9452,-7.09011,0],_rotation,285.175] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[0.332882,-21.8079,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[-16.1199,16.0966,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[-0.58423,-8.85118,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[16.3092,-4.33717,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[16.6055,-18.3986,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[16.8332,0.770271,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[-14.9367,-21.745,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[-14.8266,-2.45202,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[14.8988,16.0652,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[-2.47458,11.7993,0],_rotation,0] call _fnc_createObject;



// Statics 

if (count _staticWeaponClasses > 0) then {
    // Gun behind sandbags
    _pos = [19.6069,0.305584,0];
    _dir = 44.2359;
    
    _guns = _staticWeaponClasses;
    _gun = selectRandom _guns;
    _static = [_gun, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
	[_static,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
};
if (count _staticWeaponClasses > 0) then {
    // Gun behind sandbags
    _pos = [19.1103,-20.8921,0];
    _dir = 135.365;
    
    _guns = _staticWeaponClasses;
    _gun = selectRandom _guns;
    _static = [_gun, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
    [_static,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
};
if (count _staticWeaponClasses > 0) then {
    // Gun behind sandbags
    _pos = [-23.7495,-14.7535,0];
    _dir = 270.615;
    
    _guns = _staticWeaponClasses;
    _gun = selectRandom _guns;
    _static = [_gun, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
    [_static,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
};

// Armor
_armor = selectRandom _parkedArmorClasses;

if (count _parkedArmorClasses > 0) then {

    _pos = [7.01739,-9.93378,0.0054493];
    _dir = 270.653;
    
    _sarmor = [_armor, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
	
	_sarmor setfuel random [0.05, 0.10, 0.15];
	_sarmor setdamage random [0.25, 0.5, 0.9];
	_sarmor setVehicleAmmo random [0, 0.5, 1];

};
// setVehicleAmmo cannot be used until Ammo Depots rearm all vehicles


// Vehicles
if (count _parkedVehicleClasses > 0) then {
    // Cars
    _pos = [-12.8915,10.5251,0.025671];
    _dir = 0.00583295;
    
    _vehicle = selectRandom _parkedVehicleClasses;
    _stupidvehicle = [_vehicle, _pos, _dir, _center, _rotation] call _fnc_CreateVehicle;
	
	_stupidvehicle setfuel random 1;
	_stupidvehicle setdamage random [0, 0.2, 0.5];
	_stupidvehicle setVehicleAmmo random [0, 0.5, 1];
};

_random = random 1;
if (_random > .5 ) then {
    _pos = [16.2488,10.723,0.0260024];
    _dir = 0.515785;
    
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


