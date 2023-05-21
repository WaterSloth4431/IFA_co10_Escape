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
_obj = ["Loudspeakers_EP1",_center,[-2.00721,2.99128,0],_rotation,271.138] call _fnc_createObject;
	A3E_PrisonLoudspeakerObject = _obj;
	publicvariable "A3E_PrisonLoudspeakerObject";

// create shed
_obj = ["Land_Plot_rust_branka",_center,[-2.00687,-2.09128,0],_rotation,270.008] call _fnc_createObject;
	A3E_PrisonGateObject = _obj;
_obj = ["LIB_FlagCarrier_GER",_center,[2.60698,-3.19087,0],_rotation,86.5781] call _fnc_createObject;
    _obj setflagtexture A3E_VAR_Flag_Ind;
_obj = ["CUP_hromada_beden_dekorativniX",_center,[3.69608,2.73108,0],_rotation,315.21] call _fnc_createObject;
_obj = ["CUP_A2_plot_rust_cihlsloup",_center,[2.2953,2.75371,0],_rotation,269.946] call _fnc_createObject;
_obj = ["CUP_A2_plot_rust_cihlsloup",_center,[2.16977,-2.85998,0],_rotation,0] call _fnc_createObject;
_obj = ["CUP_A2_plot_rust_cihlsloup",_center,[-1.99217,2.71829,0],_rotation,179.889] call _fnc_createObject;
_obj = ["Land_WoodPile_large_F",_center,[3.34473,-0.631328,-0.293692],_rotation,357.338] call _fnc_createObject;
_obj = ["CUP_A2_vilvar2_4",_center,[-2.03987,0.666688,0],_rotation,269.933] call _fnc_createObject;
_obj = ["CUP_A2_vilvar2_4_2",_center,[0.0446308,-2.86019,0],_rotation,0] call _fnc_createObject;
_obj = ["CUP_A2_vilvar2_4_2",_center,[0.132994,2.72279,0],_rotation,179.889] call _fnc_createObject;
_obj = ["CUP_A2_vilvar2_4_2",_center,[2.20878,-0.676692,0],_rotation,269.946] call _fnc_createObject;
_obj = ["CUP_A2_vilvar2_4_2",_center,[2.17441,0.858918,0],_rotation,269.946] call _fnc_createObject;
_obj = ["Land_ClutterCutter_medium_F",_center,[-3.74544,-4.2932,0.375325],_rotation,0] call _fnc_createObject;
_obj = ["Land_ClutterCutter_medium_F",_center,[0.263068,-0.0347204,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_ClutterCutter_medium_F",_center,[-4.2262,2.73237,0.0272341],_rotation,0] call _fnc_createObject;
_obj = ["Land_ClutterCutter_medium_F",_center,[-3.24758,-4.54274,0],_rotation,113.553] call _fnc_createObject;
_obj = ["CUP_A2_barels3",_center,[1.6888,3.92425,0],_rotation,0.210132] call _fnc_createObject;
_obj = ["Land_Pillow_grey_F",_center,[-3.26623,3.53824,-4.76837e-006],_rotation,87.7981] call _fnc_createObject;
_obj = ["Campfire_burning_F",_center,[-3.8085,-4.76379,0],_rotation,113.553] call _fnc_createObject;
_obj = ["Land_Garbage_square5_F",_center,[-0.0335552,0.161904,0],_rotation,359.953] call _fnc_createObject;
_obj = ["Land_Garbage_square5_F",_center,[-3.69634,-2.4673,0],_rotation,113.553] call _fnc_createObject;
_obj = ["fow_p_chair",_center,[-3.67686,-3.20106,0],_rotation,3.28811] call _fnc_createObject;
_obj = ["fow_p_chair",_center,[-2.15149,-4.62608,0],_rotation,84.3535] call _fnc_createObject;
_obj = ["Land_Pillow_old_F",_center,[-2.64129,1.13799,-5.24521e-006],_rotation,87.7942] call _fnc_createObject;
_obj = ["Land_Sleeping_bag_F",_center,[-3.40344,0.870553,0],_rotation,91.325] call _fnc_createObject;
_obj = ["Land_Sleeping_bag_brown_F",_center,[-4.09998,2.94428,0],_rotation,67.1312] call _fnc_createObject;
_obj = ["Land_Sacks_heap_F",_center,[-0.997194,3.97846,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_WoodenLog_F",_center,[-0.568875,-4.26039,7.15256e-006],_rotation,88.1772] call _fnc_createObject;
_obj = ["Land_WoodPile_F",_center,[0.865493,-3.59016,0],_rotation,90.5132] call _fnc_createObject;


	
};

//Stuff that can be local and is created duplicated on each client. This reduces network traffic at start.

//create and set flag texture





