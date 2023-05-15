//WW2 ammo depot 1
//FOB

// Eden Object composition to SQF
// Export file
// Script by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"

if(!isserver) exitwith {};

private ["_center", "_staticWeaponClasses", "_parkedVehicleClasses"];
private ["_obj", "_pos", "_marker", "_instanceNo", "_randomNo", "_gun", "_angle", "_car"];
_center = _this select 0;


_staticWeaponClasses = _this select 1;
_parkedVehicleClasses = _this select 2;
private _rotation = random 360;

[_center,25] call a3e_fnc_cleanupTerrain;

if (isNil "drn_BuildAmmoDepot_MarkerInstanceNo") then {
	drn_BuildAmmoDepot_MarkerInstanceNo = 0;
}
else {
	drn_BuildAmmoDepot_MarkerInstanceNo = drn_BuildAmmoDepot_MarkerInstanceNo + 1;
};
_instanceNo = drn_BuildAmmoDepot_MarkerInstanceNo;

private _fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];

    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_relativePos select 2)], _rotateDir] call A3E_fnc_rotatePosition);
    _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
    _object;
};

    // Cars
    
    if (random 10 > 1 && count _parkedVehicleClasses > 0) then {
        _car = selectRandom _parkedVehicleClasses;
    }
    else {
        _car = "";
    };
    
    if (_car != "") then {

        _obj = [_car,_center,[9.71173,1.65911,0.58038],_rotation,0.000163014] call _fnc_createObject;

        [_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
    };


	// Statics
    
    if (count _staticWeaponClasses > 0) then {
        _gun = selectRandom _staticWeaponClasses;
        
        _obj = [_gun,_center,[-7.49672,-9.37873,0.544191],_rotation,208.336] call _fnc_createObject;
      
		[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
    };


//SPAWN IN THE BASE OBJECTS	

_obj = ["fow_Flag_Japan02",_center,[1.61311,-5.38002,0.556],_rotation,1.60122] call _fnc_createObject;
_obj = ["fow_flag_jap01",_center,[-2.27134,3.46622,2.79651],_rotation,1.60164] call _fnc_createObject;
_obj = ["fow_flag_jap01",_center,[1.47228,-3.43506,2.44951],_rotation,179.756] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[1.78653,-2.38142,0.301507],_rotation,86.3836] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-1.97709,-5.99541,0.289259],_rotation,359.417] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-2.69509,0.97709,0.40029],_rotation,176.323] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-2.59048,-2.25219,0.347293],_rotation,176.323] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[3.24378,-0.367162,0.289607],_rotation,1.4741] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[3.31602,1.98916,0.264317],_rotation,0.119275] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-2.47524,-6.06208,0.289259],_rotation,180.882] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-1.40512,2.63358,1.02278],_rotation,269.06] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[1.68111,2.65328,1.0131],_rotation,270.596] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-1.49582,6.06323,0.982953],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-0.444364,-7.88567,1.40508],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[5.91798,0.272699,0.790946],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-4.88339,-7.61598,0.888395],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-3.87914,-2.04519,1.60434],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[0.272681,-4.06095,1.43857],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[5.00113,-3.5181,0.62618],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-4.15115,3.33805,2.01758],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[3.91458,5.00046,1.71147],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[4.7446,3.62419,1.94922],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-6.05724,2.95123,0.549539],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-4.81667,3.29511,0.899521],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-3.31636,-4.87306,1.85062],_rotation,325.262] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-4.78248,-1.75372,1.03515],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[6.69646,-0.973179,0.532382],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-3.213,6.44048,0.492363],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-3.81627,2.5442,1.64216],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[5.02537,-3.36735,1.37995],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[4.3659,2.2568,2.0265],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[1.28811,4.96693,1.51004],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[0.134678,-5.36278,1.27582],_rotation,1.60164] call _fnc_createObject;
_obj = ["WW2_BET_PZ_Mauer_End",_center,[-2.02463,2.92591,1.53851],_rotation,1.60164] call _fnc_createObject;
_obj = ["WW2_BET_PZ_Mauer_End",_center,[0.0262876,2.88468,1.54951],_rotation,0.374658] call _fnc_createObject;
_obj = ["WW2_BET_PZ_Mauer_End",_center,[1.72241,2.87243,1.54875],_rotation,0.374521] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-5.57597,5.94285,0.556],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[1.47412,-7.03808,0.556],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[6.40506,5.46375,0.556],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-5.95787,4.25121,0.64961],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[2.78208,-5.66394,0.56143],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-5.36687,-9.18462,0.556],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[5.57057,-4.16854,0.556],_rotation,1.60164] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[5.5189,7.1381,0.556],_rotation,1.60164] call _fnc_createObject;
_obj = ["Land_WW2_BET_RGB_667_Plant_B",_center,[-0.138099,0.55194,1.53551],_rotation,359.513] call _fnc_createObject;
_obj = ["fow_flag_jap03",_center,[2.94101,-1.37765,2.44851],_rotation,88.9876] call _fnc_createObject;
_obj = ["young_palm_03",_center,[-4.1682,5.3139,1.41443],_rotation,1.60164] call _fnc_createObject;
_obj = ["young_palm_03",_center,[4.5495,3.65211,1.99355],_rotation,1.60164] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-3.10715,-7.27878,0.898507],_rotation,270.258] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-1.48727,-7.1702,0.886507],_rotation,270.258] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-3.06196,-4.94612,0.914507],_rotation,270.258] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-1.48832,-4.88412,0.875507],_rotation,270.258] call _fnc_createObject;
_obj = ["young_palm_02",_center,[3.91518,-5.97215,0.556],_rotation,142.405] call _fnc_createObject;
_obj = ["palm_01",_center,[4.43985,-2.62804,1.15751],_rotation,1.60164] call _fnc_createObject;


// ++++++++FLAG++++++++++//




// Weapons

    private ["_weapons", "_weaponMagazines", "_box", "_weaponCount"];
	
    // Basic Weapon Box

    _weapons = [];
    _weaponMagazines = [];
    
    for "_i" from 0 to (count a3e_arr_AmmoDepotBasicWeapons - 1) do {
        private ["_handGunItem", "_weaponClassName", "_probabilityOfPrecence", "_minCount", "_maxCount", "_magazines", "_magazinesPerWeapon"];
        
        _handGunItem = a3e_arr_AmmoDepotBasicWeapons select _i;
        
        _weaponClassName = _handGunItem select 0;
        _probabilityOfPrecence = _handGunItem select 1;
        _minCount = _handGunItem select 2;
        _maxCount = _handGunItem select 3;
        _magazines = _handGunItem select 4;
        _magazinesPerWeapon = _handGunItem select 5;
        
        if (random 100 <= _probabilityOfPrecence) then {
            _weaponCount = floor (_minCount + random (_maxCount - _minCount));
            _weapons pushBack [_weaponClassName, _weaponCount];
            
            for "_j" from 0 to (count _magazines) - 1 do {
                _weaponMagazines pushBack [_magazines select _j, _weaponCount * _magazinesPerWeapon];
            };
        };
    };

    if (count _weapons > 0 || count _weaponMagazines > 0) then {

		_box = ["fow_ab_ija_81mm_type97_SMOKE",_center,[-0.404793,1.846,1.58525],_rotation,90.1779] call _fnc_createObject;

        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        clearItemCargoGlobal _box;
		clearBackpackCargoGlobal _box;

        
        {
            _box addWeaponCargoGlobal _x;
        } foreach _weapons;
        
        {
            _box addMagazineCargoGlobal _x;
        } foreach _weaponMagazines;
    };

    // Special Weapon Box

    _weapons = [];
    _weaponMagazines = [];
    
    for "_i" from 0 to (count a3e_arr_AmmoDepotSpecialWeapons - 1) do {
        private ["_handGunItem", "_weaponClassName", "_probabilityOfPrecence", "_minCount", "_maxCount", "_magazines", "_magazinesPerWeapon"];
        
        _handGunItem = a3e_arr_AmmoDepotSpecialWeapons select _i;
        
        _weaponClassName = _handGunItem select 0;
        _probabilityOfPrecence = _handGunItem select 1;
        _minCount = _handGunItem select 2;
        _maxCount = _handGunItem select 3;
        _magazines = _handGunItem select 4;
        _magazinesPerWeapon = _handGunItem select 5;
        
        if (random 100 <= _probabilityOfPrecence) then {
            _weaponCount = floor (_minCount + random (_maxCount - _minCount));
            _weapons pushBack [_weaponClassName, _weaponCount];
            
            for "_j" from 0 to (count _magazines) - 1 do {
                _weaponMagazines pushBack [_magazines select _j, _weaponCount * _magazinesPerWeapon];
            };
        };
    };

    if (count _weapons > 0 || count _weaponMagazines > 0) then {

		_box = ["FOW_AB_IJA_Crate_20mm",_center,[-2.31876,0.51463,1.55197],_rotation,88.5032] call _fnc_createObject;
        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        clearItemCargoGlobal _box;
		clearBackpackCargoGlobal _box;
        
        {
            _box addWeaponCargoGlobal _x;
        } foreach _weapons;
        
        {
            _box addMagazineCargoGlobal _x;
        } foreach _weaponMagazines;
    };


	//additional boxes (only spawned if activated in mission parameters)


	if((A3E_Param_Waffelbox)==1) then {
		_box = [a3e_additional_weapon_box_1,_center,[2.8296,-7.52423,0.556],_rotation,88.9443] call _fnc_createObject;
        _box call A3E_fnc_initArsenal;		  
		_box = [a3e_additional_weapon_box_2,_center,[2.82689,-6.8606,0.555999],_rotation,88.9443] call _fnc_createObject;
        _box call A3E_fnc_initArsenal;				  
	 };

    // Ordnance

    _weapons = [];
    _weaponMagazines = [];
    
    for "_i" from 0 to (count a3e_arr_AmmoDepotOrdnance - 1) do {
        private ["_handGunItem", "_weaponClassName", "_probabilityOfPrecence", "_minCount", "_maxCount", "_magazines", "_magazinesPerWeapon"];
        
        _handGunItem = a3e_arr_AmmoDepotOrdnance select _i;
        
        _weaponClassName = _handGunItem select 0;
        _probabilityOfPrecence = _handGunItem select 1;
        _minCount = _handGunItem select 2;
        _maxCount = _handGunItem select 3;
        _magazines = _handGunItem select 4;
        _magazinesPerWeapon = _handGunItem select 5;
        
        if (random 100 <= _probabilityOfPrecence) then {
            _weaponCount = floor (_minCount + random (_maxCount - _minCount));
            _weapons pushBack [_weaponClassName, _weaponCount];
            
            for "_j" from 0 to (count _magazines) - 1 do {
                _weaponMagazines pushBack [_magazines select _j, _weaponCount * _magazinesPerWeapon];
            };
        };
    };
    
    if (count _weapons > 0 || count _weaponMagazines > 0) then {

		_box = ["FOW_AB_IJA_Crate_Generic",_center,[-2.19068,1.70348,1.57801],_rotation,89.8999] call _fnc_createObject;
        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        clearItemCargoGlobal _box;
		clearBackpackCargoGlobal _box;
        
        {
            _box addWeaponCargoGlobal _x;
        } foreach _weapons;
        
        {
            _box addMagazineCargoGlobal _x;
        } foreach _weaponMagazines;
    };


    // Vehicle

    _weapons = [];
    _weaponMagazines = [];
    
    for "_i" from 0 to (count a3e_arr_AmmoDepotVehicle - 1) do {
        private ["_handGunItem", "_weaponClassName", "_probabilityOfPrecence", "_minCount", "_maxCount", "_magazines", "_magazinesPerWeapon"];
        
        _handGunItem = a3e_arr_AmmoDepotVehicle select _i;
        
        _weaponClassName = _handGunItem select 0;
        _probabilityOfPrecence = _handGunItem select 1;
        _minCount = _handGunItem select 2;
        _maxCount = _handGunItem select 3;
        _magazines = _handGunItem select 4;
        _magazinesPerWeapon = _handGunItem select 5;
        
        if (random 100 <= _probabilityOfPrecence) then {
            _weaponCount = floor (_minCount + random (_maxCount - _minCount));
            _weapons pushBack [_weaponClassName, _weaponCount];
            
            for "_j" from 0 to (count _magazines) - 1 do {
                _weaponMagazines pushBack [_magazines select _j, _weaponCount * _magazinesPerWeapon];
            };
        };
    };
	
	 _items = [];
	 for "_i" from 0 to (count a3e_arr_AmmoDepotVehicleItems - 1) do {
        private ["_item", "_itemClassName", "_probabilityOfPrecence", "_minCount", "_maxCount"];
        
        _item = a3e_arr_AmmoDepotVehicleItems select _i;
        
        _itemClassName = _item select 0;
        _probabilityOfPrecence = _item select 1;
        _minCount = _item select 2;
        _maxCount = _item select 3;
        
        if (random 100 <= _probabilityOfPrecence) then {
            _itemCount = floor (_minCount + random (_maxCount - _minCount));
            _items pushback [_itemClassName, _itemCount];
        };
    };
	
	
    if (count _weapons > 0 || count _weaponMagazines > 0 || count _items > 0) then {

		_box = ["LIB_Lone_Big_Box",_center,[-0.342326,-0.919434,1.55257],_rotation,89.5666] call _fnc_createObject;
        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        clearItemCargoGlobal _box;
		clearBackpackCargoGlobal _box;
        
        {
            _box addWeaponCargoGlobal _x;
        } foreach _weapons;
        
        {
            _box addMagazineCargoGlobal _x;
        } foreach _weaponMagazines;
		{
            _box addBackpackCargoGlobal [_x,4];
        } foreach a3e_arr_AmmoDepotVehicleBackpacks;
		{
            _box addItemCargoGlobal _x;
        } foreach _items;
    };

    // Items

    _weapons = [];
    
    for "_i" from 0 to (count a3e_arr_AmmoDepotItems - 1) do {
        private ["_item", "_itemClassName", "_probabilityOfPrecence", "_minCount", "_maxCount"];
        
        _item = a3e_arr_AmmoDepotItems select _i;
        
        _itemClassName = _item select 0;
        _probabilityOfPrecence = _item select 1;
        _minCount = _item select 2;
        _maxCount = _item select 3;
        
        if (random 100 <= _probabilityOfPrecence) then {
            _itemCount = floor (_minCount + random (_maxCount - _minCount));
            _weapons pushBack [_itemClassName, _itemCount];
        };
    };
    
    if (count _weapons > 0) then {

		_box = ["FOW_AB_IJA_Crate_Generic_P",_center,[-2.17763,-0.790976,1.55197],_rotation,36.5477] call _fnc_createObject;
        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        clearItemCargoGlobal _box;
		clearBackpackCargoGlobal _box;
        
        {
            _box addItemCargoGlobal _x;
        } foreach _weapons;
    };

    // Launchers

    _weapons = [];
    _weaponMagazines = [];
    
    for "_i" from 0 to (count a3e_arr_AmmoDepotLaunchers - 1) do {
        private ["_handGunItem", "_weaponClassName", "_probabilityOfPrecence", "_minCount", "_maxCount", "_magazines", "_magazinesPerWeapon"];
        
        _handGunItem = a3e_arr_AmmoDepotLaunchers select _i;
        
        _weaponClassName = _handGunItem select 0;
        _probabilityOfPrecence = _handGunItem select 1;
        _minCount = _handGunItem select 2;
        _maxCount = _handGunItem select 3;
        _magazines = _handGunItem select 4;
        _magazinesPerWeapon = _handGunItem select 5;
        
        if (random 100 <= _probabilityOfPrecence) then {
            _weaponCount = floor (_minCount + random (_maxCount - _minCount));
            _weapons set [count _weapons, [_weaponClassName, _weaponCount]];
            
            for "_j" from 0 to (count _magazines) - 1 do {
                _weaponMagazines set [count _weaponMagazines, [_magazines select _j, _weaponCount * _magazinesPerWeapon]];
            };
        };
    };
    
    if (count _weapons > 0 || count _weaponMagazines > 0) then {

     	_box = ["LIB_BasicAmmunitionBox_SU",_center,[0.936724,-0.909016,1.56533],_rotation,3.60063e-005] call _fnc_createObject;
        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        clearItemCargoGlobal _box;
		clearBackpackCargoGlobal _box;
        
        {
            _box addWeaponCargoGlobal _x;
        } foreach _weapons;
        
        {
            _box addMagazineCargoGlobal _x;
        } foreach _weaponMagazines;
    };

    // Set markers
     
    ["drn_AmmoDepotMapMarker" + str _instanceNo,_center,"o_installation"] call A3E_fnc_createLocationMarker;

    _marker = createMarkerLocal ["drn_AmmoDepotPatrolMarker" + str _instanceNo, _center];
    _marker setMarkerShapeLocal "ELLIPSE";
    _marker setMarkerAlphaLocal 0;
    _marker setMarkerSizeLocal [50, 50];