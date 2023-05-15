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


_obj = ["asset_palm_04",_center,[5.9326,7.01864,0.358638],_rotation,236.843] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-0.596694,5.71493,0.267637],_rotation,261.893] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[5.2329,1.13534,0.267637],_rotation,4.45251] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[3.66502,4.74032,0.267637],_rotation,303.597] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-4.27931,3.27205,0.267637],_rotation,212.884] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-2.00246,-4.40812,0.267637],_rotation,123.156] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-4.72414,-0.839762,0.267637],_rotation,161.414] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[3.42479,-3.35832,0.267637],_rotation,38.5426] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[1.49754,-8.13908,0.267637],_rotation,359.729] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[0.611314,-8.2216,0.267637],_rotation,177.913] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[3.22801,-4.01896,0.831107],_rotation,310.222] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[4.91258,-1.25089,0.831107],_rotation,292.765] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[0.0556495,-9.43937,0.831107],_rotation,268.958] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[4.17333,4.69686,0.831107],_rotation,214.153] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[1.99364,-9.32463,0.831107],_rotation,268.958] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[5.48827,1.96737,0.831107],_rotation,272.92] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[1.93993,-6.64298,0.831107],_rotation,268.958] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[1.37694,5.89754,0.831105],_rotation,185.699] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-1.88087,5.70662,0.831107],_rotation,166.42] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-4.32472,3.95272,0.831107],_rotation,303.758] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-5.22023,0.922934,0.831107],_rotation,270.687] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-4.64992,-2.12101,0.831107],_rotation,247.505] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-2.57716,-4.51652,0.831107],_rotation,211.473] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-0.0117333,-6.78117,0.831107],_rotation,268.958] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[1.14305,6.20516,1.14066],_rotation,183.546] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-2.63039,-4.76945,1.18464],_rotation,211.544] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-4.88478,-2.03605,1.16628],_rotation,246.306] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-1.25734,6.11873,1.18464],_rotation,167.994] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[4.30125,4.89901,1.09984],_rotation,213.649] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[5.21727,-1.17472,1.14546],_rotation,112.938] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-5.40431,0.98934,1.18648],_rotation,270.594] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-4.60304,3.90926,1.21832],_rotation,122.251] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[3.73827,-3.81046,1.15564],_rotation,129.763] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[5.74315,1.98739,1.1437],_rotation,273.328] call _fnc_createObject;
_obj = ["asset_palm_13",_center,[-2.15041,-1.98234,3.65608],_rotation,323.628] call _fnc_createObject;
_obj = ["asset_palm_13",_center,[3.06444,2.0533,3.6796],_rotation,213.332] call _fnc_createObject;
_obj = ["asset_palm_13",_center,[2.07958,-0.275797,3.65364],_rotation,187.165] call _fnc_createObject;
_obj = ["asset_palm_14",_center,[-1.93068,6.1368,2.12719],_rotation,184.337] call _fnc_createObject;
_obj = ["asset_palm_14",_center,[-0.664565,-7.54826,2.18429],_rotation,268.678] call _fnc_createObject;
_obj = ["asset_palm_14",_center,[4.91795,-2.32951,2.10291],_rotation,121.252] call _fnc_createObject;
_obj = ["Land_wx_camonet02",_center,[-2.44484,-2.82609,1.5318],_rotation,90.0289] call _fnc_createObject;
_obj = ["Land_wx_camonet02",_center,[3.32323,-2.26164,1.58853],_rotation,90.0289] call _fnc_createObject;
_obj = ["Land_wx_camonet02",_center,[3.86424,2.62264,1.64364],_rotation,90.029] call _fnc_createObject;
_obj = ["Land_wx_bunker_roof01",_center,[-3.8091,-0.841715,0.267637],_rotation,267.838] call _fnc_createObject;
_obj = ["Land_wx_bunker_roof01",_center,[3.8325,2.48885,0.267637],_rotation,267.838] call _fnc_createObject;
_obj = ["Land_wx_bunker_roof01",_center,[3.95311,-0.447184,0.267637],_rotation,267.838] call _fnc_createObject;
_obj = ["Land_wx_bunker_roof01",_center,[-4.1841,2.36825,0.267637],_rotation,267.838] call _fnc_createObject;
_obj = ["Land_wx_bunker_roof01",_center,[-0.108413,2.18416,0.267637],_rotation,356.155] call _fnc_createObject;
_obj = ["Land_wx_bunker_roof01",_center,[0.14354,-2.17472,0.267637],_rotation,356.009] call _fnc_createObject;
_obj = ["asset_palm_15",_center,[-7.52736,2.21053,0.267637],_rotation,335.121] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[6.4409,-4.88468,0.267637],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[0.694321,-0.0599766,0.227118],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[6.53026,0.277914,0.109901],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[-5.43165,-5.43253,0],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[0.963853,5.27352,0.111666],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[0.227525,-5.04777,0.0966377],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[6.89696,5.37069,0.349648],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[-5.438,-0.153238,0.00897503],_rotation,0] call _fnc_createObject;


_gun = selectRandom a3e_arr_MortarSite;
_obj = [_gun,_center,[-1.53513,1.7002,0.576787],_rotation,357.813] call _fnc_createObject;
[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
a3e_var_artillery_units pushBack _obj;




["A3E_MortarSiteMapMarker" + str _number,_center,"o_mortar"] call A3E_fnc_createLocationMarker;


_marker = createMarkerLocal ["A3E_MortarSitePatrolMarker" + str _number, _center];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerAlphaLocal 0;
_marker setMarkerSizeLocal [50, 50];