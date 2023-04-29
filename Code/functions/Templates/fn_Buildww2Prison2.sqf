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
   _obj = ["Loudspeakers_EP1",_center,[4.95307,3.46834,0],_rotation,271.138] call _fnc_createObject;
	A3E_PrisonLoudspeakerObject = _obj;
	publicvariable "A3E_PrisonLoudspeakerObject";

// create shed
	_obj = ["Land_Plot_zed_drevo1_branka",_center,[-4.88946,0.283766,0],_rotation,90.3278] call _fnc_createObject;
	A3E_PrisonGateObject = _obj;
    _obj = ["LIB_FlagCarrier_GER",_center,[-4.81622,-3.59026,0],_rotation,262.464] call _fnc_createObject;
    _obj setflagtexture A3E_VAR_Flag_Ind;
    _obj = ["Land_Garbage_square5_F",_center,[-0.65655,0.21736,0.0164423],_rotation,0] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[-3.56109,6.9488,0],_rotation,179.115] call _fnc_createObject;
    _obj = ["Land_Garbage_square5_F",_center,[0.122015,-5.5844,0],_rotation,166.535] call _fnc_createObject;
    _obj = ["Barrel2",_center,[-0.0149484,-7.15959,0],_rotation,286.535] call _fnc_createObject;
    _obj = ["Barrel2",_center,[0.836126,-6.95598,0],_rotation,166.535] call _fnc_createObject;
    _obj = ["Land_Pneu",_center,[-2.1585,-6.25871,0],_rotation,166.535] call _fnc_createObject;
    _obj = ["AmmoCrates_NoInteractive_Small",_center,[3.19355,-7.67668,0.351359],_rotation,166.535] call _fnc_createObject;
    _obj = ["Land_Pallets_F",_center,[-1.59356,-4.32414,0],_rotation,181.535] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_large_F",_center,[-0.107234,-0.0751209,0.0164423],_rotation,0] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[-4.88726,4.649,0],_rotation,149.916] call _fnc_createObject;
    _obj = ["fow_p_chair",_center,[-4.221,6.62752,0],_rotation,68.8482] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[5.0246,1.67976,0],_rotation,270.702] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[3.22773,3.45271,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[-2.64971,3.43367,0],_rotation,180] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[0.174749,-3.13323,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[0.213079,3.43562,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[-2.68804,-3.13518,0],_rotation,180] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[-4.50225,-1.81682,0],_rotation,90.0233] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[5.00483,-1.33489,0],_rotation,270.702] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[3.1894,-3.11614,0],_rotation,0] call _fnc_createObject;
    _obj = ["Land_BagFenceLong",_center,[-4.48907,2.16463,0],_rotation,90.3462] call _fnc_createObject;
    _obj = ["Land_ClutterCutter_medium_F",_center,[-4.64239,6.6197,0],_rotation,0] call _fnc_createObject;
    _obj = ["Campfire_burning_F",_center,[-5.69805,6.10066,0],_rotation,179.115] call _fnc_createObject;
    _obj = ["Land_tent_east",_center,[0.219182,0.141188,0],_rotation,0] call _fnc_createObject;
    _obj = ["Barrel4",_center,[0.979436,-7.7553,0],_rotation,166.535] call _fnc_createObject;
    _obj = ["Barrel4",_center,[1.63422,-7.18352,0],_rotation,271.535] call _fnc_createObject;
    _obj = ["Barrel4",_center,[1.70575,-7.90422,0],_rotation,166.535] call _fnc_createObject;
    _obj = ["Misc_concrete_High",_center,[2.7331,-5.21623,0],_rotation,346.535] call _fnc_createObject;
    _obj = ["Land_GarbagePallet_F",_center,[0.0639091,-5.34123,0],_rotation,166.535] call _fnc_createObject;
    _obj = ["Land_WW2_Wall_VilVar2_4_2",_center,[5.02656,0.133986,0.0164423],_rotation,90] call _fnc_createObject;
    _obj = ["land_fow_fence_Metal_1",_center,[-2.02791,-2.36925,0],_rotation,180] call _fnc_createObject;
    _obj = ["land_fow_fence_Metal_1",_center,[-2.08174,3.83783,0],_rotation,180] call _fnc_createObject;
    _obj = ["land_fow_fence_Metal_1",_center,[2.59428,-3.51233,0],_rotation,0] call _fnc_createObject;
    _obj = ["land_fow_fence_Metal_1",_center,[2.54045,2.69475,0.0164423],_rotation,0] call _fnc_createObject;

	
};

//Stuff that can be local and is created duplicated on each client. This reduces network traffic at start.

//create and set flag texture





