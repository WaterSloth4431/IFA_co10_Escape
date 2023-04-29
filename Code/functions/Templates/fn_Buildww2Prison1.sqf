// Object composition created and exported with Map Builder
// See www.map-builder.info - Map Builder by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"

// WW2 Prison 1

//params and vars already defined in original buildprison function
private["_obj","_pos"];
params ["_center","_rotation","_backpack"];

// functions from export script
_fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];

    _fnc_rotatePos = {
        private ["_centerPos", "_pos", "_dir"];
        private ["_px", "_py", "_mpx", "_mpy", "_ma", "_rpx", "_rpy"];
        _centerPos = _this select 0;
        _pos = _this select 1;
        _dir = _this select 2;
        _px = _pos select 0;
        _py = _pos select 1;
        _mpx = _centerPos select 0;
        _mpy = _centerPos select 1;
        _ma = _dir;
        _rpx = ( (_px - _mpx) * cos(_ma) ) + ( (_py - _mpy) * sin(_ma) ) + _mpx;
        _rpy = (-(_px - _mpx) * sin(_ma) ) + ( (_py - _mpy) * cos(_ma) ) + _mpy;
        [_rpx, _rpy, (_pos select 2)];
    };

    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_centerPos select 2)], _rotateDir] call _fnc_rotatePos);
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
	_pos = [_center,_center vectorAdd [0,0,0.5],_rotation] call A3E_fnc_rotatePosition;
	_backpack setdir ((getdir _backpack) + _rotation);
	_backpack setPosATL _pos;

// create loudspeaker
	_obj = ["Loudspeakers_EP1",_center,[-4.68681,4.04715,0],_rotation,271.138] call _fnc_createObject;
	A3E_PrisonLoudspeakerObject = _obj;
	publicvariable "A3E_PrisonLoudspeakerObject";

// create shed
	_obj = ["Land_Plot_rust_branka",_center,[0.43453,3.99833,0],_rotation,0] call _fnc_createObject;
	A3E_PrisonGateObject = _obj;
    _obj = ["LIB_FlagCarrier_GER",_center,[-5.20097,-3.92697,0],_rotation,265.296] call _fnc_createObject;
    _obj setflagtexture A3E_VAR_Flag_Ind;
    _obj = ["Campfire_burning_F",_center,[-5.76835,6.68045,0],_rotation,148.582] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_medium_F",_center,[-5.04399,7.38211,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_WoodPile_large_F",_center,[1.08297,-4.86056,0],_rotation,85.8201] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[-7.12602,-0.415737,0],_rotation,269.971] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[-4.35844,8.49637,0],_rotation,148.582] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[-0.179728,0.000766873,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_large_F",_center,[-0.0903721,0.0505716,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_WoodenLog_F",_center,[-1.59012,-6.34592,7.15256e-006],_rotation,78.0026] call _fnc_createObject;
    _obj = ["Land_WoodPile_F",_center,[-2.6475,-5.47384,0],_rotation,10.7707] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[-4.76371,7.88456,0],_rotation,38.3152] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[-4.33256,5.84208,0],_rotation,119.383] call _fnc_createObject;
    _obj = ["Land_CratesWooden_F",_center,[4.62203,4.4578,0],_rotation,271.874] call _fnc_createObject;
    _obj = ["Land_Pallets_F",_center,[-5.84721,-0.566128,0],_rotation,179.971] call _fnc_createObject;
    _obj = ["Land_Sack_F",_center,[4.87447,3.9495,1.4799],_rotation,91.107] call _fnc_createObject;
    _obj = ["Land_Sack_F",_center,[4.26119,3.95292,1.47892],_rotation,314.428] call _fnc_createObject;
    _obj = ["Land_CratesShabby_F",_center,[4.38595,2.90018,0],_rotation,91.8739] call _fnc_createObject;
    _obj = ["CUP_A2_plot_rust_cihlsloup",_center,[-4.28715,4.0579,0],_rotation,90.0758] call _fnc_createObject;
    _obj = ["CUP_A2_plot_rust_cihlsloup",_center,[3.61349,-3.87179,0],_rotation,270.034] call _fnc_createObject;
    _obj = ["CUP_A2_plot_rust_cihlsloup",_center,[-4.45292,-3.80832,0],_rotation,0] call _fnc_createObject;
    _obj = ["CUP_A2_plot_rust_cihlsloup",_center,[3.77779,3.99393,0],_rotation,179.959] call _fnc_createObject;
    _obj = ["Land_WoodenCart_F",_center,[5.55982,0.171845,-0.00570011],_rotation,29.9945] call _fnc_createObject;
    _obj = ["CUP_A2_vilvar2_4",_center,[3.05074,4.00174,0],_rotation,0] call _fnc_createObject;
    _obj = ["CUP_A2_vilvar2_4",_center,[-2.32792,-3.93332,0],_rotation,0] call _fnc_createObject;
    _obj = ["CUP_A2_vilvar2_4",_center,[3.74166,-1.74777,0],_rotation,270.034] call _fnc_createObject;
    _obj = ["CUP_A2_vilvar2_4",_center,[-2.3914,4.08377,0],_rotation,0] call _fnc_createObject;
    _obj = ["CUP_A2_vilvar2_4",_center,[-4.41483,1.93387,0],_rotation,90.0758] call _fnc_createObject;
    _obj = ["CUP_A2_vilvar2_4_2",_center,[-4.41972,-1.94357,0],_rotation,90.0758] call _fnc_createObject;
    _obj = ["CUP_A2_vilvar2_4_2",_center,[1.44747,-3.91476,0],_rotation,0] call _fnc_createObject;
    _obj = ["CUP_A2_vilvar2_4_2",_center,[3.74434,2.12772,0],_rotation,270.034] call _fnc_createObject;
	
};

//Stuff that can be local and is created duplicated on each client. This reduces network traffic at start.

//create and set flag texture





