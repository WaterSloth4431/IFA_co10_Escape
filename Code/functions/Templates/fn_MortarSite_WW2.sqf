//VN US Mortar 1
//Mortar Pit

if(isNil("A3E_MortarMarkerNumber")) then {
	A3E_MortarMarkerNumber = 0;
} else {
	A3E_MortarMarkerNumber = A3E_MortarMarkerNumber +1;
};
_number = A3E_MortarMarkerNumber;

_center = [_this,0] call bis_fnc_param;
private _rotation = random 360;
private["_obj","_objpos","_dir","_gun","_center","_rotation","_pos"];


_fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];

    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_relativePos select 2)], _rotateDir] call A3E_fnc_rotatePosition);
    _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
    _object;
};


_obj = ["Fort_Crate_wood",_center,[13.9871,1.72408,0],_rotation,0] call _fnc_createObject;
_obj = ["Fort_Crate_wood",_center,[14.3038,3.44108,0],_rotation,0] call _fnc_createObject;
_obj = ["CUP_hromada_beden_dekorativniX",_center,[11.1104,-1.84947,0],_rotation,345] call _fnc_createObject;
_obj = ["Land_fort_artillery_nest",_center,[-11.3026,4.40521,0],_rotation,300] call _fnc_createObject;
_obj = ["Land_fort_artillery_nest",_center,[11.7055,4.25628,0],_rotation,60] call _fnc_createObject;
_obj = ["babe_helper",_center,[0,0,-5],_rotation,0] call _fnc_createObject;
_obj = ["Land_Garbage_square5_F",_center,[6.50287,4.42827,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_Garbage_square5_F",_center,[4.29799,-1.61837,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_CratesWooden_F",_center,[3.22611,6.37359,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_CratesWooden_F",_center,[8.54538,-2.554,0],_rotation,161.974] call _fnc_createObject;
_obj = ["Land_Sacks_heap_F",_center,[13.1011,6.24859,0],_rotation,135] call _fnc_createObject;
_obj = ["Land_Sack_F",_center,[12.6011,6.99852,0],_rotation,60] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[2.71694,-7.04887,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_bagfence_corner",_center,[-2.39891,-6.87646,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[6.9129,-6.54436,0],_rotation,345] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[-6.8085,-6.56096,0],_rotation,15] call _fnc_createObject;
_obj = ["Land_fort_rampart",_center,[0.21353,9.86475,0],_rotation,180] call _fnc_createObject;
_obj = ["Barrels",_center,[8.96111,7.74224,0],_rotation,195] call _fnc_createObject;
_obj = ["Land_MetalBarrel_empty_F",_center,[4.85111,6.49859,0],_rotation,150] call _fnc_createObject;
_obj = ["Land_MetalBarrel_F",_center,[-2.86489,6.37249,0.0204215],_rotation,233.834] call _fnc_createObject;
_obj = ["Land_MetalBarrel_F",_center,[-3.39902,6.74859,-0.000998497],_rotation,29.9835] call _fnc_createObject;
_obj = ["Barrel2",_center,[-0.868494,6.85943,0],_rotation,180] call _fnc_createObject;
_obj = ["Barrel3",_center,[-13.7739,5.74859,0],_rotation,15] call _fnc_createObject;
_obj = ["Barrel3",_center,[-13.3989,-0.00141478,0],_rotation,0] call _fnc_createObject;
_obj = ["Barrel3",_center,[-12.7739,-0.751415,0],_rotation,60] call _fnc_createObject;
_obj = ["Land_CamoNetB_EAST",_center,[8.72612,3.12352,0],_rotation,90] call _fnc_createObject;
_obj = ["LIB_FlagCarrier_GER",_center,[1.42262,-5.48914,0],_rotation,179.435] call _fnc_createObject;


_gun = selectRandom a3e_arr_MortarSite;
_obj = [_gun,_center,[-8.61133,2.5294,-0.0046587],_rotation,360] call _fnc_createObject;
[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
[_obj, -1] remoteExec ["ace_cargo_fnc_setSize"];
[_obj, false] remoteExec ["ace_dragging_fnc_setDraggable"];
[_obj, false] remoteExec ["ace_dragging_fnc_setCarryable"];
a3e_var_artillery_units pushBack _obj;




["A3E_MortarSiteMapMarker" + str _number,_center,"o_mortar"] call A3E_fnc_createLocationMarker;


_marker = createMarkerLocal ["A3E_MortarSitePatrolMarker" + str _number, _center];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerAlphaLocal 0;
_marker setMarkerSizeLocal [50, 50];