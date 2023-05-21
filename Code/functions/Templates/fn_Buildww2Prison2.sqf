// Object composition created and exported with Map Builder
// See www.map-builder.info - Map Builder by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"

// WW2 Prison 1

//params and vars already defined in original buildprison function
private["_obj","_pos","_yaw","_pitch","_roll"];
params ["_center","_rotation","_backpack"];

// functions from export script
_fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];

    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_relativePos select 2)], _rotateDir] call A3E_fnc_rotatePosition);
    _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
    _object;
};


// set obj to nothing, from export script
private _obj = objNull;

// if server statement, from original buildprisonfuntion
//Stuff that needs to be global. Normally this is the gate and the Loudspeaker
if(isserver) then {
// cleanup terrain
    [_center,25] call a3e_fnc_cleanupTerrain;

// set position of backpack
 
    
    _pos = [_center,_center vectorAdd [random 2.0 - 1, random 2.0 -1,0],_rotation] call A3E_fnc_rotatePosition;
    _backpack setdir ((getdir _backpack) + _rotation);
    _backpack setPosATL _pos;
    
// create loudspeaker
    _obj = ["Loudspeakers_EP1",_center,[4.43636,3.31284,-0.00292969],_rotation,271.138] call _fnc_createObject;
	A3E_PrisonLoudspeakerObject = _obj;
	publicvariable "A3E_PrisonLoudspeakerObject";

// create shed
    _obj = ["Land_Shed_14_F",_center,[-2.30113,-0.173333,-0.275119],_rotation,90.8745] call _fnc_createObject;
	A3E_PrisonGateObject = _obj;
    _obj = ["LIB_FlagCarrier_GER",_center,[-5.39024,-3.32288,-0.00292969],_rotation,262.464] call _fnc_createObject;
    _obj setflagtexture A3E_VAR_Flag_Ind;
    _obj = ["Land_WoodPile_large_F",_center,[5.02644,-1.23618,0],_rotation,357.338] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_medium_F",_center,[1.04933,5.1009,0.0243039],_rotation,98.2946] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_medium_F",_center,[-5.3023,4.88734,-0.00293112],_rotation,0] call _fnc_createObject;
    _obj = ["Campfire_burning_F",_center,[-6.35796,4.3683,-0.00293112],_rotation,179.115] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[-4.221,5.21644,-0.00293112],_rotation,179.115] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[-1.2657,-5.25488,-0.00293016],_rotation,166.535] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[0.336816,-0.146666,-0.00293016],_rotation,248.234] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[-4.88091,4.89515,-0.00293112],_rotation,68.8482] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[-5.54717,2.91664,-0.00293112],_rotation,149.916] call _fnc_createObject;
    _obj = ["Land_Sleeping_bag_F",_center,[-0.9117,4.55535,-0.00293016],_rotation,189.62] call _fnc_createObject;
    _obj = ["Land_Sleeping_bag_brown_F",_center,[1.24082,4.94543,-0.00293016],_rotation,165.426] call _fnc_createObject;
    _obj = ["Barrel4",_center,[0.246511,-6.854,-0.00293016],_rotation,271.535] call _fnc_createObject;
    _obj = ["Barrel4",_center,[-0.408274,-7.42577,-0.00293016],_rotation,166.535] call _fnc_createObject;
    _obj = ["Barrel4",_center,[0.318044,-7.5747,-0.00293016],_rotation,166.535] call _fnc_createObject;
    _obj = ["Land_GarbagePallet_F",_center,[-1.3238,-5.01171,-0.00293016],_rotation,166.535] call _fnc_createObject;
    _obj = ["Barrel2",_center,[-0.551585,-6.62646,-0.00293016],_rotation,166.535] call _fnc_createObject;
    _obj = ["Barrel2",_center,[-1.40266,-6.83007,-0.00293016],_rotation,286.535] call _fnc_createObject;
    _obj = ["AmmoCrates_NoInteractive_Small",_center,[1.80584,-7.34716,0.130632],_rotation,166.535] call _fnc_createObject;
    _obj = ["Land_Pallets_F",_center,[-3.72104,-4.05852,-0.00293016],_rotation,181.535] call _fnc_createObject;
    _obj = ["Land_WoodenLog_F",_center,[5.41361,1.50095,8.10623e-006],_rotation,36.655] call _fnc_createObject;
    _obj = ["Land_WoodPile_F",_center,[5.7814,3.04089,0],_rotation,38.9905] call _fnc_createObject;
    _obj = ["Misc_concrete_High",_center,[2.12237,-4.90942,-0.00293016],_rotation,244.836] call _fnc_createObject;
    _obj = ["ClutterCutter_EP1",_center,[0.226681,-0.27213,-0.00293016],_rotation,0] call _fnc_createObject;


	
};

//Stuff that can be local and is created duplicated on each client. This reduces network traffic at start.

//create and set flag texture





