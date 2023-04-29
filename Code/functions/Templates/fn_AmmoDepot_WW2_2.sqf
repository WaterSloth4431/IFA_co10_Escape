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

        _obj = [_car,_center,[-9.28547,4.93033,0.0235839],_rotation,3.33066e-005] call _fnc_createObject;

        [_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
    };


	// Statics
    
    if (count _staticWeaponClasses > 0) then {
        _gun = selectRandom _staticWeaponClasses;
        
        _obj = [_gun,_center,[7.60345,-0.484212,-0.0121188],_rotation,89.6339] call _fnc_createObject;
      
		[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
    };


//SPAWN IN THE BASE OBJECTS	

_obj = ["Land_Garbage_square5_F",_center,[7.69272,-4.02877,0],_rotation,300] call _fnc_createObject;
_obj = ["Land_Pallet_F",_center,[3.03427,-7.90377,0],_rotation,224.332] call _fnc_createObject;
_obj = ["Land_BagBunker_Small_F",_center,[0.534517,2.84574,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[3.65927,1.84623,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[6.03427,-4.90377,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[6.53427,1.84623,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_BagFenceLong",_center,[-2.46573,1.84623,0],_rotation,0] call _fnc_createObject;
_obj = ["Wire",_center,[6.55283,7.61283,0],_rotation,195] call _fnc_createObject;
_obj = ["Wire",_center,[-1.46548,8.59623,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[1.78403,-5.65377,0],_rotation,180] call _fnc_createObject;
_obj = ["Land_HBarrier_3_F",_center,[-0.590727,-4.77828,0],_rotation,90] call _fnc_createObject;
_obj = ["Land_Pneu",_center,[-1.95987,-1.96529,0],_rotation,105] call _fnc_createObject;
_obj = ["AmmoCrates_NoInteractive_Small",_center,[2.681,-3.98483,0.133562],_rotation,90] call _fnc_createObject;
_obj = ["Land_Pallets_stack_F",_center,[1.0273,-4.02947,-0.000935078],_rotation,269.953] call _fnc_createObject;
_obj = ["Land_Pallets_F",_center,[-2.71573,-7.27926,0],_rotation,120] call _fnc_createObject;
_obj = ["Land_Pallets_F",_center,[-3.71573,-2.77926,0],_rotation,120] call _fnc_createObject;
_obj = ["Land_Sack_F",_center,[-0.215727,-7.77877,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_GarbagePallet_F",_center,[7.90927,-4.15377,0],_rotation,300] call _fnc_createObject;
_obj = ["Land_BagFenceEnd",_center,[9.65927,-0.0292587,0],_rotation,270] call _fnc_createObject;
_obj = ["Land_BagFenceEnd",_center,[-5.59048,-0.15377,0],_rotation,105] call _fnc_createObject;
_obj = ["Land_BagFenceRound",_center,[9.03427,-1.40377,0],_rotation,315] call _fnc_createObject;
_obj = ["Land_BagFenceRound",_center,[6.78427,-2.65377,0],_rotation,135] call _fnc_createObject;
_obj = ["Land_BagFenceRound",_center,[9.03427,1.22123,0],_rotation,225] call _fnc_createObject;
_obj = ["Land_BagFenceRound",_center,[-4.84073,1.22123,0],_rotation,135] call _fnc_createObject;
_obj = ["Land_CamoNetVar_NATO",_center,[-0.463286,-3.27779,0],_rotation,180] call _fnc_createObject;
_obj = ["Barrel3",_center,[-1.96329,-6.02779,0],_rotation,210] call _fnc_createObject;
_obj = ["Barrel3",_center,[-0.965727,-7.52877,0],_rotation,0] call _fnc_createObject;
_obj = ["Barrel3",_center,[-1.46573,-6.90377,0],_rotation,15] call _fnc_createObject;


// ++++++++FLAG++++++++++//

_obj = ["LIB_FlagCarrier_GER",_center,[3.85442,3.5309,0],_rotation,0] call _fnc_createObject;
_obj forceFlagTexture A3E_VAR_Flag_Opfor;


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

		_box  = ["LIB_BasicWeaponsBox_GER",_center,[-2.60183,1.02398,-0.002316],_rotation,1.79784e-006] call _fnc_createObject;
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

		_box  = ["LIB_WeaponsBox_Big_GER",_center,[-4.31249,0.0274308,-6.67572e-006],_rotation,360] call _fnc_createObject;
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
		_box = [a3e_additional_weapon_box_1,_center,[2.89463,0.371266,0.0133538],_rotation,8.37107e-006] call _fnc_createObject;
        _box call A3E_fnc_initArsenal;		  
		_box = [a3e_additional_weapon_box_2,_center,[2.88159,1.11934,0.0133538],_rotation,4.03931e-006] call _fnc_createObject;
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

		_box  = ["LIB_Mine_Ammo_Box_Ger",_center,[-0.0128037,-2.50981,-0.00583029],_rotation,2.88532e-006] call _fnc_createObject;
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

		_box  = ["VirtualReammoBox_small_F",_center,[4.20818,0.871198,0],_rotation,88.6861] call _fnc_createObject;
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

		_box  = ["LIB_BasicAmmunitionBox_GER",_center,[-3.76985,1.02493,-0.00583029],_rotation,3.47083e-005] call _fnc_createObject;
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

     	_box  = ["Box_Syndicate_WpsLaunch_F",_center,[1.28055,-2.52131,-4.76837e-007],_rotation,5.09292e-006] call _fnc_createObject;
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