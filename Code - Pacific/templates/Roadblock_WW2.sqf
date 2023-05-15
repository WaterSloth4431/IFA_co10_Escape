//VN Roadblock 1
//Pillbox Tower

// Eden Object composition to SQF
// Export file
// Script by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"

params ["_center", "_rotation", ["_static", objNull, [objNull]], ["_vehicle", objNull, [objNull]]];
[_center,25] call a3e_fnc_cleanupTerrain;

private _fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir",["_align",true]];
    private _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_relativePos select 2)], _rotateDir] call A3E_fnc_RotatePosition);
    private _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
	if(_align) then {
		_object setVectorUp surfaceNormal _realPos;
	};	
    _object
};

private _objects = [];
private _obj = objNull;

_obj = ["Land_PaperBox_closed_F",_center,[-3.73547,-9.84082,0],_rotation,270.03] call _fnc_createObject;
_obj = ["Land_PaperBox_closed_F",_center,[-3.7345,-8.09082,0],_rotation,180.03] call _fnc_createObject;
_obj = ["Land_BagFence_Round_F",_center,[2.15906,9.79053,0],_rotation,225.03] call _fnc_createObject;
_obj = ["Land_BagFence_Round_F",_center,[2.63806,-12.7188,0],_rotation,315.03] call _fnc_createObject;
_obj = ["Land_BagFence_Round_F",_center,[2.64063,-7.71875,0],_rotation,225.03] call _fnc_createObject;
_obj = ["Land_BagFence_End_F",_center,[1.12195,-7.1084,0],_rotation,180.03] call _fnc_createObject;
_obj = ["Land_BagFence_End_F",_center,[1.26282,-13.2183,0],_rotation,210.03] call _fnc_createObject;
_obj = ["Land_BagFence_End_F",_center,[0.640747,10.4009,0],_rotation,180.03] call _fnc_createObject;
_obj = ["Land_BagFence_Long_F",_center,[2.77344,7.15576,0],_rotation,90.0297] call _fnc_createObject;
_obj = ["Land_BagFence_Long_F",_center,[3.2644,-10.2192,0],_rotation,270.03] call _fnc_createObject;
_obj = ["RoadBarrier_F",_center,[8.27039,-10.5977,-0.00396109],_rotation,94.5376] call _fnc_createObject;
_obj = ["RoadBarrier_F",_center,[7.90527,8.65283,-0.00392723],_rotation,94.5371] call _fnc_createObject;
_obj = ["Land_CncBarrier_F",_center,[5.91589,7.04883,0],_rotation,91.4387] call _fnc_createObject;
_obj = ["Land_CncBarrier_F",_center,[5.90015,10.6543,0],_rotation,91.2147] call _fnc_createObject;
_obj = ["Land_CncBarrier_F",_center,[6.15588,-12.3262,0],_rotation,91.4387] call _fnc_createObject;
_obj = ["Land_CncBarrier_F",_center,[6.26514,-8.8457,0],_rotation,91.2147] call _fnc_createObject;
_obj = ["Land_WoodenBox_F",_center,[-4.21887,-6.61182,-4.76837e-007],_rotation,15.0298] call _fnc_createObject;
_obj = ["Land_CamoNetVar_NATO",_center,[-1.9856,-10.2163,0],_rotation,0.0297052] call _fnc_createObject;


if(!(isNull _static)) then {
	_pos = [_center,_center vectorAdd [0.708252,7.06543,-0.0121183],_rotation,93.54] call A3E_fnc_rotatePosition;
	_static setdir ((getdir _static) + _rotation);
	_static setVectorUp surfaceNormal _pos;
	_static setPosATL _pos;
};

if !(isNull _vehicle) then {
	private _pos = [_center,_center vectorAdd [-1.19226,-17.8574,0.0224123],_rotation,90.2919] call A3E_fnc_rotatePosition;
	_vehicle setdir (180.256 + _rotation);
	_vehicle setPosATL _pos;
};


_objects;