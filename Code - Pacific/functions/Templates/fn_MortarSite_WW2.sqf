//VN US Mortar 1
//Mortar Pit

if(isNil("A3E_MortarMarkerNumber")) then {
	A3E_MortarMarkerNumber = 0;
} else {
	A3E_MortarMarkerNumber = A3E_MortarMarkerNumber +1;
};
_number = A3E_MortarMarkerNumber;

_position = [_this,0] call bis_fnc_param;




private["_obj","_objpos","_dir","_gunner"];


_objpos = _position vectoradd [-6.67671,-7.85666,0];
_obj = "Land_fort_rampart" createvehicle _objpos;
_dir = 15;
_obj setdir _dir;
_obj setpos _objpos;
_objpos = _position vectoradd [0.345263,8.56863,0.10107];
_obj = "Land_fort_rampart" createvehicle _objpos;
_dir = 180;
_obj setdir _dir;
_obj setpos _objpos;
_objpos = _position vectoradd [7.04473,-7.84006,0];
_obj = "Land_fort_rampart" createvehicle _objpos;
_dir = 345;
_obj setdir _dir;
_obj setpos _objpos;
_objpos = _position vectoradd [2.94731,-8.25748,0];
_obj = "Land_fort_bagfence_corner" createvehicle _objpos;
_dir = 0;
_obj setdir _dir;
_obj setpos _objpos;
_objpos = _position vectoradd [-2.26704,-8.17258,0];
_obj = "Land_fort_bagfence_corner" createvehicle _objpos;
_dir = 270;
_obj setdir _dir;
_obj setpos _objpos;
_objpos = _position vectoradd [11.8375,2.96023,0];
_obj = "Land_fort_artillery_nest" createvehicle _objpos;
_dir = 60;
_obj setdir _dir;
_obj setpos _objpos;
_objpos = _position vectoradd [-11.1709,3.10916,0];
_obj = "Land_fort_artillery_nest" createvehicle _objpos;
_dir = 300;
_obj setdir _dir;
_obj setpos _objpos;
_objpos = _position vectoradd [8.85796,1.82742,0];
_obj = "Land_CamoNetB_EAST" createvehicle _objpos;
_dir = 90;
_obj setdir _dir;
_obj setpos _objpos;

_objpos = _position vectoradd [-6.81655,0.536519,0.053659];
_obj = createVehicle [a3e_arr_MortarSite select(floor(random(count(a3e_arr_MortarSite)))), _objpos, [], 0, "NONE"];
_gunner = [_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
a3e_var_artillery_units pushBack _obj;
_dir = 359.995;
_obj setdir _dir;
_obj setpos _objpos;



["A3E_MortarSiteMapMarker" + str _number,_position,"o_mortar"] call A3E_fnc_createLocationMarker;


_marker = createMarkerLocal ["A3E_MortarSitePatrolMarker" + str _number, _position];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerAlphaLocal 0;
_marker setMarkerSizeLocal [50, 50];