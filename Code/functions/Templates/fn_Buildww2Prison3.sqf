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
   _obj = ["Loudspeakers_EP1",_center,[4.33852,-2.39261,0],_rotation,91.1146] call _fnc_createObject;
	A3E_PrisonLoudspeakerObject = _obj;
	publicvariable "A3E_PrisonLoudspeakerObject";

// create shed
	_obj = ["Land_BarGate2",_center,[-2.65587,-2.46517,0],_rotation,0] call _fnc_createObject;
	A3E_PrisonGateObject = _obj;
    _obj = ["LIB_FlagCarrier_GER",_center,[-5.07069,2.90398,0],_rotation,262.464] call _fnc_createObject;
    _obj setflagtexture A3E_VAR_Flag_Ind;
    _obj = ["Land_Garbage_square5_F",_center,[-7.34144,-3.43244,0],_rotation,88.4185] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[0.79845,5.85223,0],_rotation,178.45] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[0.177845,-0.047188,0],_rotation,103.712] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_large_F",_center,[0.0108523,0.952324,0],_rotation,0] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[-7.0121,-4.0882,0],_rotation,338.151] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[-5.02577,-4.73029,0],_rotation,59.2187] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_medium_F",_center,[-6.0702,-4.576,0],_rotation,0] call _fnc_createObject;
    _obj = ["Campfire_burning_F",_center,[-6.46742,-5.55891,0],_rotation,88.4185] call _fnc_createObject;
    _obj = ["Land_Pillow_grey_F",_center,[0.831105,4.42671,-4.29153e-006],_rotation,178.454] call _fnc_createObject;
    _obj = ["CUP_A2_barels3",_center,[5.14074,1.24383,0],_rotation,62.8045] call _fnc_createObject;
    _obj = ["CUP_hromada_beden_dekorativniX",_center,[5.00573,-1.08869,0],_rotation,17.8046] call _fnc_createObject;
    _obj = ["CUP_A2_indvar2_5",_center,[-2.40516,2.41326,0],_rotation,0] call _fnc_createObject;
    _obj = ["CUP_A2_indvar2_5",_center,[1.72768,-2.39603,0],_rotation,179.912] call _fnc_createObject;
    _obj = ["CUP_A2_indvar2_5",_center,[-4.65516,-0.211739,0],_rotation,270] call _fnc_createObject;
    _obj = ["CUP_A2_indvar2_5",_center,[3.97158,0.230435,0],_rotation,89.9092] call _fnc_createObject;
    _obj = ["CUP_A2_indvar2_5_d",_center,[2.34508,2.41326,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_A_tent",_center,[4.1798,4.68572,0],_rotation,330.289] call _fnc_createObject;
    _obj = ["Land_A_tent",_center,[-3.98744,4.87322,0],_rotation,23.1486] call _fnc_createObject;
    _obj = ["Land_Pillow_old_F",_center,[-1.57204,3.83004,-5.24521e-006],_rotation,178.45] call _fnc_createObject;
    _obj = ["Land_Sleeping_bag_brown_F",_center,[0.250843,5.26922,0],_rotation,157.786] call _fnc_createObject;
    _obj = ["Land_Sleeping_bag_F",_center,[-1.83192,4.5993,0],_rotation,181.982] call _fnc_createObject;
    _obj = ["Land_TinWall_01_m_4m_v2_F",_center,[1.75271,2.4031,0],_rotation,0] call _fnc_createObject;
	
};

//Stuff that can be local and is created duplicated on each client. This reduces network traffic at start.

//create and set flag texture





