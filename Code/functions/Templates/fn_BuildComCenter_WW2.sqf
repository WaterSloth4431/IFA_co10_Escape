//WW2 ComCenter
//FOB

// Eden Object composition to SQF
// Export file
// Script by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"
private ["_staticWeaponClasses", "_parkedVehicleClasses"];

private["_center","_rotation","_obj","_pos"];
_center = param[0];
_rotation = param[1];

if (count _this > 2) then { _staticWeaponClasses = _this select 2; } else { _staticWeaponClasses = []; };
if (count _this > 3) then { _parkedVehicleClasses = _this select 3; } else { _parkedVehicleClasses = []; };

[_center,25] call a3e_fnc_cleanupTerrain;

_fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];

    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_relativePos select 2)], _rotateDir] call A3E_fnc_rotatePosition);
    _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
    _object;
};

//Fix rotation
_rotation = _rotation + 180;

private _obj = objNull;
_obj = ["Land_transport_crates_EP1",_center,[8.56592,8.52372,0],_rotation,230.389] call _fnc_createObject;
_obj = ["AmmoCrates_NoInteractive_Large",_center,[4.07751,8.63466,0],_rotation,116.906] call _fnc_createObject;
_obj = ["AmmoCrate_NoInteractive_",_center,[6.08482,6.75985,0],_rotation,209.993] call _fnc_createObject;
_obj = ["Fort_Crate_wood",_center,[9.80692,5.33577,0],_rotation,116.906] call _fnc_createObject;
_obj = ["Fort_Crate_wood",_center,[12.6526,0.625936,0],_rotation,335.805] call _fnc_createObject;
_obj = ["Fort_Crate_wood",_center,[11.6968,0.170098,0],_rotation,335.805] call _fnc_createObject;
_obj = ["Fort_Crate_wood",_center,[12.3046,0.450562,0],_rotation,335.805] call _fnc_createObject;
_obj = ["CUP_hromada_beden_dekorativniX",_center,[6.37512,10.4707,0],_rotation,116.906] call _fnc_createObject;
_obj = ["Weapon_LIB_G43",_center,[8.55551,3.15405,0.864592],_rotation,329.815] call _fnc_createObject;
_obj = ["Weapon_LIB_K98",_center,[9.34298,1.9291,0.864592],_rotation,330.189] call _fnc_createObject;
_obj = ["Weapon_LIB_G3340",_center,[9.71799,5.2258,0],_rotation,41.3804] call _fnc_createObject;
_obj = ["Weapon_LIB_MP44",_center,[8.28902,7.41429,0],_rotation,310.943] call _fnc_createObject;
_obj = ["Weapon_LIB_K98",_center,[9.04152,2.33631,0.864592],_rotation,330.189] call _fnc_createObject;
_obj = ["Weapon_LIB_G43",_center,[8.70391,2.95827,0.864592],_rotation,329.815] call _fnc_createObject;
_obj = ["Weapon_LIB_K98",_center,[9.17963,2.12837,0.864592],_rotation,330.189] call _fnc_createObject;
_obj = ["Weapon_LIB_G43",_center,[8.81519,2.76271,0.864592],_rotation,329.815] call _fnc_createObject;
_obj = ["Weapon_LIB_K98",_center,[8.94779,2.53953,0.864592],_rotation,330.189] call _fnc_createObject;
_obj = ["LIB_Static_OpelBlitz_Radio",_center,[3.70746,-5.00785,0],_rotation,142.46] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[23.0105,2.7224,0],_rotation,90.8808] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[9.28261,20.4798,0],_rotation,7.0365] call _fnc_createObject;
_obj = ["Land_WW2_Wire_2",_center,[-14.602,15.8022,0],_rotation,170.325] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-6.14161,1.38087,0],_rotation,55.6304] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-7.77139,3.78488,0],_rotation,53.0534] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-4.51544,-0.922807,0],_rotation,55.6304] call _fnc_createObject;
_obj = ["Land_fort_bagfence_long",_center,[-2.80259,-3.30721,0],_rotation,55.6304] call _fnc_createObject;
_obj = ["Land_Table_EP1",_center,[-7.63704,-2.74279,0],_rotation,50.3605] call _fnc_createObject;
_obj = ["Land_Table_EP1",_center,[-7.37756,1.04804,0],_rotation,142.058] call _fnc_createObject;
_obj = ["Land_CamoNet_EAST",_center,[-6.58471,-1.67687,0],_rotation,51.8783] call _fnc_createObject;
_obj = ["Land_GerRadio",_center,[-6.91676,1.27755,0.857681],_rotation,229.674] call _fnc_createObject;
_obj = ["LIB_BasicAmmunitionBox_GER",_center,[-7.35196,-2.72577,0.857681],_rotation,216.939] call _fnc_createObject;
_obj = ["LIB_AmmoCrate_Arty_GER",_center,[-8.11222,-2.98258,0.857681],_rotation,231.493] call _fnc_createObject;
_obj = ["LIB_WeaponsBox_Big_GER",_center,[-8.50712,2.22568,0],_rotation,232.356] call _fnc_createObject;
_obj = ["ClutterCutter_small_EP1",_center,[-6.94207,13.3881,0],_rotation,165.289] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trenchfloor_Large",_center,[7.40855,4.92208,0],_rotation,229.331] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Trenchfloor_Large",_center,[-8.05911,-3.54563,0],_rotation,53.2628] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight",_center,[-8.70011,7.9085,0],_rotation,281.881] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight_Side",_center,[-0.671894,2.25455,0],_rotation,54.9263] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight_Side",_center,[-3.31468,5.85554,0],_rotation,55.3839] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight_Side",_center,[-14.4138,7.55538,0],_rotation,319.835] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight_Side",_center,[1.20474,-10.8049,0],_rotation,142.634] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight_Side",_center,[-17.9751,-3.52216,0],_rotation,233.517] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight_Side",_center,[-2.45946,-13.654,0],_rotation,143.607] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Straight_Side",_center,[-17.6814,4.76496,0],_rotation,319.835] call _fnc_createObject;
_obj = ["Land_I44_Buildings_CT_Floor_Straight",_center,[-8.674,8.07845,0],_rotation,101.309] call _fnc_createObject;
_obj = ["Land_WoodenCart_F",_center,[15.668,5.58011,0],_rotation,164.971] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-7.0428,-16.8306,0],_rotation,168.112] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-20.221,5.28718,0],_rotation,108.859] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[15.5334,-2.31252,0],_rotation,151.295] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[19.781,5.35823,0],_rotation,236.556] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-11.6482,13.8656,0],_rotation,3.98328] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[1.6864,-12.0514,0],_rotation,319.413] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-21.0715,-8.12611,0],_rotation,230.988] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-16.7817,11.5989,0],_rotation,128.595] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[11.8486,16.1669,0],_rotation,223.003] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[5.73917,18.8401,0],_rotation,187.229] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-22.5385,-1.49383,0],_rotation,108.859] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-13.9469,-18.4858,0],_rotation,164.839] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[-0.740931,-14.0246,0],_rotation,143.865] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[19.3729,-0.180852,0],_rotation,318.267] call _fnc_createObject;
_obj = ["Land_I44_Buildings_Barbedwire2",_center,[16.0263,11.1399,0],_rotation,236.556] call _fnc_createObject;
_obj = ["Land_WW2_Bunker_Gun_L",_center,[-15.4679,-10.8554,0],_rotation,53.7793] call _fnc_createObject;
_obj = ["Item_LIB_ACC_K98_Bayo",_center,[8.82031,2.38754,0],_rotation,116.906] call _fnc_createObject;
_obj = ["Land_WoodenTable_large_F",_center,[9.04479,2.56342,0],_rotation,147.35] call _fnc_createObject;
_obj = ["LIB_AmmoCrates_NoInteractive_Large",_center,[5.46342,5.82776,0],_rotation,116.906] call _fnc_createObject;
_obj = ["LIB_AmmoCrates_NoInteractive_Large",_center,[5.2282,2.53831,0],_rotation,116.906] call _fnc_createObject;
_obj = ["LIB_AmmoCrates_NoInteractive_Large",_center,[12.1351,2.95379,0],_rotation,134.748] call _fnc_createObject;
_obj = ["LIB_AmmoCrates_NoInteractive_Large",_center,[3.61678,1.33106,0],_rotation,233.904] call _fnc_createObject;
_obj = ["Land_ChairWood_F",_center,[3.11618,6.42315,0],_rotation,298.222] call _fnc_createObject;
_obj = ["Land_ChairWood_F",_center,[5.8642,0.970685,0],_rotation,203.315] call _fnc_createObject;
_obj = ["CamoNet_BLUFOR_F",_center,[9.24078,5.41239,0],_rotation,45.3348] call _fnc_createObject;


_obj = ["LIB_FlagCarrier_GER",_center,[-6.80574,-10.8416,0],_rotation,233.725] call _fnc_createObject;
_obj forceFlagTexture A3E_VAR_Flag_Opfor;
_obj = ["fow_p_table04",_center,[-10.8009,-9.97621,0.335849],_rotation,324.112] call _fnc_createObject;
_obj setvariable ["A3E_isTerminal",true,true];
_obj allowDamage false;



if (count _staticWeaponClasses > 0) then {
    // Statics

    _gun = selectRandom _staticWeaponClasses;
	_obj = [_gun,_center,[-15.9734,-11.0871,0.183947],_rotation,231.126] call _fnc_createObject;
	[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner;
	

};

if (count _parkedVehicleClasses > 0) then {
    // Cars
    _vehicle = selectRandom _parkedVehicleClasses;
	_obj = [_vehicle,_center,[3.80427,15.62,-0.000400543],_rotation,275.062] call _fnc_createObject;

};