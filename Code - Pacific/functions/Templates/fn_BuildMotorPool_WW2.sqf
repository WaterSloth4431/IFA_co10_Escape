private ["_center", "_rotation", "_staticWeaponClasses", "_parkedVehicleClasses", "_index"];
private ["_pos", "_dir", "_posX", "_posY", "_sectionDir", "_guns", "_gun", "_vehicle", "_powerGenerator","_static"];
private ["_fnc_CreateObject", "_parkedArmorClasses", "_armor", "_random", "_objectName", "_hqObject"];
private ["_obj", "_mNumber", "_sarmor", "_objpos", "_guardtower", "_staticAAClasses", "_newpos", "_aaemplacement", "_staticAA"];
private ["_newarmor","_newvehicle1", "_newvehicle"];

if(isNil("A3E_MotorPoolMarkerNumber")) then {
    A3E_MotorPoolMarkerNumber = 0;
} else {
    A3E_MotorPoolMarkerNumber =A3E_MotorPoolMarkerNumber +1;
};

_mNumber = A3E_MotorPoolMarkerNumber;

_center           = [_this, 0] call bis_fnc_param;
_rotation            = [_this, 1] call bis_fnc_param;
_staticWeaponClasses  = [_this, 2, []] call bis_fnc_param;
_parkedVehicleClasses = [_this, 3, []] call bis_fnc_param;
_parkedArmorClasses   = [_this, 4, []] call bis_fnc_param;
_staticAAClasses      = [_this, 5, []] call bis_fnc_param;


private _fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];

    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_relativePos select 2)], _rotateDir] call A3E_fnc_rotatePosition);
    _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
    _object;
};



[_center,50] call a3e_fnc_cleanupTerrain;

_obj = objNull;

_obj = ["asset_palm_08",_center,[-0.281494,2.93543,0.0943546],_rotation,168.704] call _fnc_createObject;
_obj = ["asset_palm_08",_center,[9.81941,4.53296,0.182354],_rotation,5.13] call _fnc_createObject;
_obj = ["asset_palm_08",_center,[-4.55715,-6.34996,0.0943546],_rotation,62.3308] call _fnc_createObject;
_obj = ["asset_palm_08",_center,[14.0333,-13.8962,0.0943546],_rotation,347.255] call _fnc_createObject;
_obj = ["asset_palm_14",_center,[-7.22683,6.18743,0.1],_rotation,283.434] call _fnc_createObject;
_obj = ["Land_wx_camonet02",_center,[7.05769,-1.86646,1.36859],_rotation,182.256] call _fnc_createObject;
_obj = ["Land_wx_camonet02",_center,[7.1197,-7.01392,1.36903],_rotation,182.256] call _fnc_createObject;
_obj = ["Land_wx_camonet02",_center,[-3.18206,12.5426,0.318225],_rotation,90.2421] call _fnc_createObject;
_obj = ["asset_palm_16",_center,[7.0196,-4.27417,3.46635],_rotation,181.603] call _fnc_createObject;
_obj = ["asset_palm_15",_center,[4.39167,-13.6702,-0.0276442],_rotation,67.348] call _fnc_createObject;
_obj = ["asset_palm_15",_center,[7.19532,6.19677,0.0943556],_rotation,11.5322] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[9.91364,0.580807,-0.302651],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[9.46687,-10.1687,-0.268187],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[4.30525,-9.90454,-0.068531],_rotation,0] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog03",_center,[4.29792,1.18042,-0.0551796],_rotation,0] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-6.78518,-13.4227,0.0306773],_rotation,268.017] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-11.2837,-12.5838,0.0306773],_rotation,180.756] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-10.3335,-9.95592,0.0306773],_rotation,358.94] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-11.2876,0.329239,-0.0513711],_rotation,177.808] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-10.4961,0.412735,-0.0513711],_rotation,359.624] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-9.37453,-14.3597,0.0306773],_rotation,87.9009] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-11.0967,-4.68248,-0.0513711],_rotation,177.808] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-6.7051,-14.3114,0.0306773],_rotation,89.8335] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-10.418,-4.59947,-0.0513711],_rotation,359.624] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-11.2232,-10.0218,0.0306773],_rotation,180.756] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-8.18206,10.1149,0.118607],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[3.57078,8.28737,-0.117089],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-4.25582,4.01093,-0.360879],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-8.44378,14.8463,-0.146377],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[2.90339,6.44888,-0.24659],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-4.33161,16.9176,0.0942898],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[3.8194,13.1227,-0.0630922],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[0.539777,4.54837,-0.187088],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-2.20922,4.12337,-0.240088],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[3.92585,18.6999,-0.0722561],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-7.18942,6.61103,0.27537],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-10.7603,-16.4764,0.72607],_rotation,271.101] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-7.12795,-11.1341,0.951795],_rotation,271.101] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-8.29445,-5.04381,0.807174],_rotation,89.9686] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-5.21828,-15.8177,1.00293],_rotation,271.101] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-8.85589,9.44839,0.194036],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-13.0269,-14.3607,1.00639],_rotation,271.101] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-13.2212,-1.87047,0.586041],_rotation,89.9686] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-8.67092,-0.488631,0.669471],_rotation,89.9686] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[3.00983,16.0099,-0.400826],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-14.0689,-7.83043,0.545485],_rotation,271.101] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-12.7398,-11.3851,1.25159],_rotation,271.101] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-4.74465,-11.9071,1.00807],_rotation,271.101] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[2.92438,10.2794,-0.402114],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[3.96003,7.09292,-0.142893],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[1.77057,5.06899,-0.594568],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-4.56051,5.38203,-0.451185],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-6.75338,4.9582,0.216034],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-7.72408,7.74807,0.0334959],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-7.83303,-2.43248,0.259545],_rotation,89.9686] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-8.66937,12.6632,0.0367203],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-7.4721,17.1222,0.313058],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-0.73675,18.0324,-0.261051],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[3.45563,19.1745,-0.21859],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-8.82082,-7.92906,0.947311],_rotation,271.101] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-13.3389,-14.9296,0.639851],_rotation,287.759] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-8.53518,-1.93394,0.793113],_rotation,352.933] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-9.00051,-10.3148,1.36634],_rotation,271.101] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-10.7227,-16.9144,0.25713],_rotation,271.101] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-13.2901,-11.0111,0.757835],_rotation,288.877] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-8.10158,2.15639,0.448403],_rotation,89.9686] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-8.98244,-6.35094,1.20005],_rotation,89.9686] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-6.27688,-15.6073,1.4501],_rotation,271.101] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-12.3853,-7.55308,1.43633],_rotation,287.894] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-13.0615,-0.0272052,1.02285],_rotation,89.9686] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-13.7178,-6.57994,0.169061],_rotation,89.9686] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-4.69875,-10.6669,0.449392],_rotation,271.101] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[9.84773,-1.219,3.24836],_rotation,88.617] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[4.37458,-4.2312,3.42336],_rotation,89.819] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[9.78864,-4.80005,3.25135],_rotation,88.617] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[7.98786,-4.62622,3.47433],_rotation,115.031] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[4.38337,-7.99097,3.40435],_rotation,89.819] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[6.11091,-4.56421,3.45576],_rotation,115.031] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[9.72566,-8.44605,3.23136],_rotation,88.617] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[4.35945,-0.619877,3.42035],_rotation,89.819] call _fnc_createObject;
_obj = ["fow_Flag_Japan02",_center,[-8.97553,4.26117,0.522552],_rotation,0] call _fnc_createObject;
_obj = ["Land_fort_artillery_nest",_center,[8.77302,-4.82056,0.181965],_rotation,92.227] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-8.14162,-13.0487,0.647145],_rotation,177.362] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-9.93166,-14.9676,0.565182],_rotation,179.226] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-9.77785,-8.6356,0.641373],_rotation,269.164] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-9.86281,0.0221112,0.587176],_rotation,88.2794] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-11.7525,-2.77769,0.639594],_rotation,88.0317] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-11.7354,-8.86217,0.641373],_rotation,272.849] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-9.79055,-3.26451,0.514813],_rotation,88.0317] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-11.8994,0.526505,0.662628],_rotation,88.0317] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-9.7676,-5.97203,0.654532],_rotation,90.4178] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-6.80666,-14.8744,0.60104],_rotation,179.138] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-11.6358,-5.98765,0.525381],_rotation,88.0317] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-5.52297,-14.8724,0.60104],_rotation,180.684] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-9.73342,-11.3089,0.627114],_rotation,270.838] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-12.0034,3.77553,0.652898],_rotation,88.0317] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-5.47951,-12.974,0.620656],_rotation,179.495] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-11.8491,-10.4916,0.641373],_rotation,269.164] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-11.8111,-13.5526,0.641373],_rotation,269.164] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-9.89113,3.36293,0.532283],_rotation,88.0317] call _fnc_createObject;
_obj = ["young_palm_02",_center,[-9.00338,7.93091,0.0943546],_rotation,126.38] call _fnc_createObject;
_obj = ["young_palm_02",_center,[11.0303,-12.2097,0.480455],_rotation,89.9686] call _fnc_createObject;
_obj = ["young_palm_02",_center,[2.95803,15.6321,0.0943546],_rotation,126.38] call _fnc_createObject;
_obj = ["young_palm_02",_center,[-13.1094,2.22963,0.85563],_rotation,89.9686] call _fnc_createObject;
_obj = ["palm_01",_center,[2.5821,8.92251,0.140957],_rotation,0] call _fnc_createObject;
_obj = ["palm_01",_center,[-8.84759,15.3131,0.208694],_rotation,0] call _fnc_createObject;
_obj = ["palm_01",_center,[-12.6797,-15.5853,0.522736],_rotation,271.101] call _fnc_createObject;
_obj = ["young_palm_03",_center,[-8.68932,11.1162,0.0943542],_rotation,126.38] call _fnc_createObject;
_obj = ["young_palm_03",_center,[-13.4024,-4.30064,0.0809054],_rotation,89.9686] call _fnc_createObject;
_obj = ["young_palm_03",_center,[-5.9736,5.99677,0.419264],_rotation,0] call _fnc_createObject;
_obj = ["young_palm_03",_center,[15.1099,-4.22828,0.508317],_rotation,89.9686] call _fnc_createObject;
_obj = ["young_palm_03",_center,[4.18968,11.8793,0.0943542],_rotation,126.38] call _fnc_createObject;
_obj = ["Land_I44_Bunker_01",_center,[-2.99261,11.5719,-0.402941],_rotation,178.275] call _fnc_createObject;



// Statics 

if (count _staticWeaponClasses > 0) then {
    // Gun behind sandbags
    _gun = selectRandom _staticWeaponClasses;
    _obj = [_gun,_center,[12.7569,7.5211,0],_rotation,95.3938] call _fnc_createObject;
    [_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner;  
};
if (count _staticWeaponClasses > 0) then {
    // Gun behind sandbags
    _gun = selectRandom _staticWeaponClasses;
    _obj = [_gun,_center,[-2.36903,-16.4363,0.0943546],_rotation,182.331] call _fnc_createObject;
    [_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner;  
};
// Armor


if (count _parkedArmorClasses > 0) then {
 
    _armor = selectRandom _parkedArmorClasses;
    _newarmor = [_armor,_center,[6.20173,-4.78687,0.0943551],_rotation,269.77] call _fnc_createObject;

	_newarmor setfuel random [0.05, 0.10, 0.15];
	_newarmor setdamage random [0.25, 0.5, 0.9];
	_newarmor setVehicleAmmo random [0, 0.5, 1];

};
// setVehicleAmmo cannot be used until Ammo Depots rearm all vehicles

// Vehicles
if (count _parkedVehicleClasses > 0) then {
    // Cars
    
    _vehicle = selectRandom _parkedVehicleClasses;
    _newvehicle = [_vehicle,_center,[-12.5741,12.4949,0.0943546],_rotation,179.664] call _fnc_createObject;
	
	_newvehicle setfuel random 1;
	_newvehicle setdamage random [0, 0.2, 0.5];
	_newvehicle setVehicleAmmo random [0, 0.5, 1];
};

_random = random 1;
if (_random > .5 ) then {

    _vehicle1 = selectRandom _parkedVehicleClasses;
    _newvehicle1 = [_vehicle1,_center,[9.73272,13.7391,0],_rotation,129.344] call _fnc_createObject;
	
	_newvehicle1 setfuel random 1;
	_newvehicle1 setdamage random [0, 0.2, 0.5];
	_newvehicle1 setVehicleAmmo random [0, 0.5, 1];
};


["A3E_MotorPoolMapMarker" + str _mNumber,_center,"o_service"] call A3E_fnc_createLocationMarker;

_marker = createMarkerLocal ["A3E_MotorPoolPatrolMarker" + str _mNumber, _center];
_marker setMarkerShapeLocal "RECTANGLE";
_marker setMarkerAlphaLocal 0;
_marker setMarkerSizeLocal [40, 38];


