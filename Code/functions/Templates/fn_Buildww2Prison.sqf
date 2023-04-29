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
	_obj = ["Loudspeakers_EP1",_center,[2.09487,2.94069,0],_rotation,271.138] call _fnc_createObject;
	A3E_PrisonLoudspeakerObject = _obj;
	publicvariable "A3E_PrisonLoudspeakerObject";

// create shed
	_obj = ["Land_Slum_House02_F",_center,[-1.422,-1.056,-0.1],_rotation,0] call _fnc_createObject;
	A3E_PrisonGateObject = _obj;

	_obj = ["LIB_FlagCarrier_GER",_center,[-2.39194,-6.85765,0],_rotation,271.687] call _fnc_createObject;
    _obj setflagtexture A3E_VAR_Flag_Ind;

    _obj = ["Land_WoodPile_large_F",_center,[3.38516,1.46706,0],_rotation,7.81246] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[4.16201,-6.86936,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[-6.48984,-2.54808,0],_rotation,87.7942] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[0.131008,-0.113017,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_Slums02_4m",_center,[-2.42197,-4.8054,0],_rotation,270] call _fnc_createObject;
    _obj = ["Land_Slums02_4m",_center,[1.57803,-4.8054,0],_rotation,270] call _fnc_createObject;
    _obj = ["Land_cargo_addon01_V2_F",_center,[3.45303,-0.806376,0],_rotation,270] call _fnc_createObject;
    _obj = ["Land_Pillow_old_F",_center,[-4.44105,-4.89635,-5.24521e-006],_rotation,87.7942] call _fnc_createObject;
    _obj = ["Land_Sleeping_bag_F",_center,[-5.20322,-5.1638,0],_rotation,91.325] call _fnc_createObject;
    _obj = ["Land_Sleeping_bag_brown_F",_center,[-5.89975,-3.09007,0],_rotation,67.1312] call _fnc_createObject;
    _obj = ["Land_Pillow_grey_F",_center,[-5.06602,-2.49611,-4.29153e-006],_rotation,87.7981] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_medium_F",_center,[-6.02597,-3.30198,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_medium_F",_center,[5.88516,-5.62864,0.100491],_rotation,0] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_large_F",_center,[-0.0276836,-1.33128,0.23],_rotation,0] call _fnc_createObject;
    _obj = ["Land_WoodenLog_F",_center,[4.38981,-1.67504,8.10623e-006],_rotation,359.995] call _fnc_createObject;
    _obj = ["Land_WoodPile_F",_center,[3.31729,-2.52806,0],_rotation,292.763] call _fnc_createObject;
    _obj = ["Land_Sacks_heap_F",_center,[-2.79697,-2.05589,0],_rotation,90] call _fnc_createObject;
    _obj = ["CUP_A2_barels3",_center,[-6.67905,4.08181,0],_rotation,341.062] call _fnc_createObject;
    _obj = ["Campfire_burning_F",_center,[6.31192,-6.05442,0],_rotation,0] call _fnc_createObject;
    _obj = ["CUP_hromada_beden_dekorativniX",_center,[-4.39145,3.61306,0],_rotation,296.062] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[5.52359,-4.59056,0],_rotation,330.8] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[1.35098,-3.79124,0],_rotation,33.0479] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[4.82681,-6.55833,0],_rotation,249.733] call _fnc_createObject;

};

//Stuff that can be local and is created duplicated on each client. This reduces network traffic at start.

//create and set flag texture



