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

        _obj = [_car,_center,[-12.3534,3.98313,0.0238724],_rotation,244.749] call _fnc_createObject;

        [_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
    };


	// Statics
    
    if (count _staticWeaponClasses > 0) then {
        _gun = selectRandom _staticWeaponClasses;
        
        _obj = [_gun,_center,[2.07713,18.5336,0.184],_rotation,3.095] call _fnc_createObject;
      
		[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
    };
    if (count _staticWeaponClasses > 0) then {
        _gun = selectRandom _staticWeaponClasses;
        
        _obj = [_gun,_center,[4.53645,-16.4112,0],_rotation,175.637] call _fnc_createObject;
      
        [_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner; 
    };


//SPAWN IN THE BASE OBJECTS	

_obj = ["Land_WW2_Bunker_Gun_R",_center,[2.05869,18.5257,0],_rotation,182.874] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trench1",_center,[15.3395,0.470372,0],_rotation,62.8066] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trench1",_center,[-12.9306,7.31756,0],_rotation,330.095] call _fnc_createObject;
_obj = ["LIB_FlagCarrier_GER",_center,[-4.74466,10.7363,0],_rotation,0] call _fnc_createObject;
_obj = ["Fort_RazorWire",_center,[-13.8949,-8.0663,0],_rotation,199.596] call _fnc_createObject;
_obj = ["Fort_RazorWire",_center,[-1.74804,-12.7165,0],_rotation,216.828] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[3.97526,-18.4481,0],_rotation,182.35] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[7.08262,-17.614,0],_rotation,142.426] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[-20.6029,-2.89557,0],_rotation,265.947] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[10.8845,-14.8335,0],_rotation,154.977] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[-16.7386,-6.82306,0],_rotation,181.114] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[-19.4125,-5.62822,0],_rotation,226.677] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[1.4994,-16.9273,0],_rotation,236.798] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[9.3916,-13.2566,0],_rotation,144.472] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-13.3046,-5.26873,0],_rotation,30.6244] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[1.49436,-15.1609,0],_rotation,245.629] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-3.48611,-10.1371,0],_rotation,210.007] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-0.976585,-11.5877,0],_rotation,210.007] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[0.880867,-13.8254,0],_rotation,247.629] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-11.0837,-6.58211,0],_rotation,210.007] call _fnc_createObject;
_obj = ["Land_Table_EP1",_center,[11.2881,5.6529,0],_rotation,138.293] call _fnc_createObject;
_obj = ["Land_CamoNet_EAST",_center,[12.6419,4.50493,0],_rotation,48.1133] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trenchfloor_Large",_center,[14.4672,-1.59026,0],_rotation,61.3903] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trenchfloor_Large",_center,[6.41294,-9.44481,0],_rotation,45.6821] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trenchfloor_Large",_center,[2.89259,6.74339,0],_rotation,2.716] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trenchfloor_Large",_center,[-15.5717,-0.959747,0],_rotation,2.716] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trenchfloor_Large",_center,[-5.43707,-1.99116,0],_rotation,18.7164] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trenchfloor_Large",_center,[-12.1438,4.05113,0],_rotation,336.485] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight_Side",_center,[12.5339,11.7137,0],_rotation,42.6657] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[16.8427,11.4708,0],_rotation,233.492] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[22.4984,-0.655403,0],_rotation,79.7138] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-17.1435,12.3244,0],_rotation,148.243] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-11.316,14.8817,0],_rotation,343.167] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[20.6222,5.42569,0],_rotation,244.793] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-22.7181,7.88033,0],_rotation,136.941] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[-17.6205,-4.38279,0],_rotation,209.358] call _fnc_createObject;
_obj = ["Land_fort_bagfence_round",_center,[4.82279,-16.3661,0],_rotation,166.948] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[-6.40884,-0.238222,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[7.85722,-5.11601,0],_rotation,0] call _fnc_createObject;
_obj = ["ClutterCutter_EP1",_center,[-14.8916,0.24358,0],_rotation,0] call _fnc_createObject;
_obj = ["WW2_Fortification_Pillbox_Small",_center,[-7.34844,-8.29664,0],_rotation,20.753] call _fnc_createObject;



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

        _box = ["LIB_BasicWeaponsBox_GER",_center,[10.3618,6.99077,-0.00204134],_rotation,223.385] call _fnc_createObject;
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

        _box = ["LIB_WeaponsBox_Big_GER",_center,[9.35077,7.38142,-3.19481e-005],_rotation,131.395] call _fnc_createObject;
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
		_box = [a3e_additional_weapon_box_1,_center,[-1.71538,9.37449,0.0128198],_rotation,2.80318] call _fnc_createObject;
        _box call A3E_fnc_initArsenal;		  
		_box = [a3e_additional_weapon_box_2,_center,[-1.69386,9.96904,0.0128193],_rotation,3.16792] call _fnc_createObject;
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

        _box = ["LIB_Mine_Ammo_Box_Ger",_center,[11.5406,5.50038,0.85564],_rotation,343.547] call _fnc_createObject;
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

        _box = ["VirtualReammoBox_small_F",_center,[13.0932,3.25228,-1.43051e-006],_rotation,248.241] call _fnc_createObject;
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

        _box = ["LIB_BasicAmmunitionBox_GER",_center,[11.0997,5.99159,0.85564],_rotation,228.177] call _fnc_createObject;
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

        _box = ["Box_Syndicate_WpsLaunch_F",_center,[12.6555,4.45463,0],_rotation,66.9991] call _fnc_createObject;
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