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
_obj = ["asset_palm_03",_center,[17.472,5.446,-0.235513],_rotation,314.806] call _fnc_createObject;
_obj = ["asset_palm_03",_center,[-7.018,-1.27,0.285],_rotation,158.855] call _fnc_createObject;
_obj = ["asset_palm_03",_center,[6.591,-12.233,0.285],_rotation,247.667] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.169569,-2.64725,0.408372],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.0977917,-2.43241,0.395731],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-0.1,-2.203,0.432],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-3.4652,-6.99149,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.161,-3.316,0.333],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.256483,-3.54911,0.2357],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.156874,-3.82792,0.268429],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.161757,-4.11893,0.177675],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.153944,-4.33573,0.0454202],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.353163,-2.82304,0.366161],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-3.90318,-6.99638,0.129545],_rotation,269.287] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-3.68834,-7.01786,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-3.25572,-6.99784,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-3.03795,-7.04423,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-2.65123,-7.04032,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-2.16149,-7.00712,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-0.873888,-6.98173,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-0.383,-7.012,0.159],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.0631237,-6.98368,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.546522,-7.06425,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.980604,-6.94462,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[1.43519,-6.97392,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.505018,-3.0579,0.327386],_rotation,359.569] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[1.61635,-4.94559,0.15852],_rotation,178.891] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.280409,-4.78397,0.0114522],_rotation,178.891] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[3.33949,-6.783,0.162675],_rotation,268.95] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[1.80726,-8.91239,0.186802],_rotation,176.056] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-1.89879,-9.05692,0.16581],_rotation,180.624] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-1.91246,-6.95731,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.319471,-6.88065,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-2.411,-7.02421,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.757948,-6.93534,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-1.52233,-7.00809,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[1.20424,-6.92313,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-2.86363,-6.97831,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[1.63637,-6.84794,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.096,9.146,0.431],_rotation,355.83] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.036,9.495,0.373],_rotation,358.352] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-1.32213,-7.02177,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[2.62562,-6.86649,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-0.631212,-7.03251,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[3.08217,-6.79569,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-1.10582,-7.00809,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[3.57582,-6.75663,0.208838],_rotation,268.95] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-0.156115,-6.9036,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[1.85219,-6.95731,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-2.185,-4.994,0.290657],_rotation,178.566] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[2.84486,-6.73856,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[2.35658,-6.84794,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[-1.71666,-7.04276,0.15852],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[2.12172,-6.91532,0.153898],_rotation,268.971] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog01",_center,[0.239,9.375,0.378],_rotation,355.83] call _fnc_createObject;
_obj = ["Land_ClothShelter_02_F",_center,[1.14467,-11.8387,0.179108],_rotation,183.734] call _fnc_createObject;
_obj = ["Land_wx_bunker_singlelog04",_center,[0.00160025,-4.60722,0.0391197],_rotation,359.57] call _fnc_createObject;
_obj = ["WW2_BET_PZ_Mauer_End",_center,[13.3439,6.78683,1.04313],_rotation,89.9235] call _fnc_createObject;
_obj = ["WW2_BET_PZ_Mauer_End",_center,[13.34,8.895,1.048],_rotation,89.924] call _fnc_createObject;
_obj = ["WW2_BET_PZ_Mauer_End",_center,[13.353,10.265,1.041],_rotation,89.924] call _fnc_createObject;
_obj = ["fow_flag_jap03",_center,[8.98833,6.75925,1.77965],_rotation,269.273] call _fnc_createObject;
_obj = ["fow_flag_jap03",_center,[12.681,8.25773,1.85102],_rotation,91.749] call _fnc_createObject;
_obj = ["land_fow_table",_center,[12.1299,8.00874,0.782464],_rotation,91.151] call _fnc_createObject;
_obj = ["LIB_SovRadio",_center,[12.0919,10.3508,1.62218],_rotation,288.028] call _fnc_createObject;
_obj = ["Land_Antenna",_center,[11.586,7.874,4.248],_rotation,84.88] call _fnc_createObject;
_obj = ["Land_WW2_BET_RGB_667_Plant_B",_center,[11.184,8.465,0.765],_rotation,89.062] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[4.93471,13.385,0.335222],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-1.09068,4.24728,1.56321],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[5.62953,7.5837,0.8357],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[1.3434,12.0515,1.28176],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-5.56578,7.9172,1.33649],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[2.15541,4.13009,1.41936],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-2.8358,6.68771,0.614246],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-4.92809,12.8772,0.536728],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-14.3714,12.2341,0.774794],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-9.44957,12.175,1.2506],_rotation,209.002] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-15.6459,7.89034,0.98442],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-10.3353,6.68282,0.402947],_rotation,0] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-8.84508,8.35323,1.47652],_rotation,195.259] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-0.905626,12.5861,1.08893],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-2.1068,5.93233,1.23149],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[3.47767,13.3796,0.505676],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-4.34459,7.55733,1.16752],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[4.03822,7.8298,1.22051],_rotation,0] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[2.69057,5.46944,1.07169],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[3.44349,4.3088,0.158519],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-2.786,4.83175,0.467497],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-5.49742,6.78878,0.448059],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[3.00258,12.424,1.3837],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-1.75621,8.11349,1.44695],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-1.64195,13.342,0.158519],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[6.42299,6.83566,0.0720739],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-5.30406,12.0954,1.65575],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[6.06801,13.2048,0.622102],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[3.15785,7.05978,0.822295],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-11.6669,7.8005,1.02139],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-7.51207,6.98653,0.293409],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-16.5917,8.03536,0.908714],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-15.5526,12.6203,0.289778],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-12.68,12.1814,1.28076],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-8.54527,12.9035,0.454887],_rotation,0] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-10.1385,12.3781,0.893649],_rotation,0] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-9.324,10.374,0.158],_rotation,269.655] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-0.40465,0.586632,0.15852],_rotation,182.745] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-0.199572,6.19308,0.158519],_rotation,179.256] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[5.506,-9.147,0.159],_rotation,1.587] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[0.573378,10.5036,0.158519],_rotation,268.684] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[0.0885143,-11.2737,0.154033],_rotation,88.4923] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-3.98766,-11.3919,0.15852],_rotation,88.65] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[3.527,-11.18,0.159],_rotation,87.759] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[0.35121,0.830284,0.15852],_rotation,1.58719] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-5.92955,-4.84403,0.112858],_rotation,179.145] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-3.97838,-2.85966,0.15852],_rotation,269.292] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-14.467,9.361,0.00699997],_rotation,87.839] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-9.2401,9.48605,0.158825],_rotation,87.8391] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[3.7809,-2.53495,0.15852],_rotation,269.292] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-5.84752,-9.69169,0.107737],_rotation,179.145] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[0.551405,6.1711,0.158519],_rotation,0.447145] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-3.85533,10.4172,0.158519],_rotation,269.655] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-3.77233,9.52901,0.158519],_rotation,87.8391] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[3.9933,10.594,0.158519],_rotation,269.655] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[4.07631,9.70577,0.158519],_rotation,87.8391] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[5.62953,-4.20292,0.15852],_rotation,1.58719] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-14.551,10.249,0],_rotation,269.655] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[2.58,11.152,0.929],_rotation,358.063] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[0.881,-0.994,0.838],_rotation,93.087] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-7.96568,8.88155,0.720577],_rotation,179.29] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-17.626,12.425,0.198],_rotation,89.911] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[0.958632,4.73605,0.732972],_rotation,270.909] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-0.954,1.565,0.838],_rotation,93.087] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-0.8109,4.90011,0.748365],_rotation,270.909] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-15.882,8.694,0.446],_rotation,179.29] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-10.6092,10.945,0.72172],_rotation,179.29] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-7.93981,10.9758,0.720201],_rotation,179.29] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[0.95912,7.43966,0.772053],_rotation,269.17] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[1.002,1.683,0.838],_rotation,93.087] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[5.46,11.281,0.939],_rotation,358.063] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-0.0667591,11.07,0.929361],_rotation,358.063] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-5.18834,10.9812,0.857088],_rotation,357.837] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[5.26,9.208,0.834],_rotation,358.063] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-10.6122,8.81954,0.721782],_rotation,179.29] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-0.846056,7.52999,0.738849],_rotation,268.266] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-17.507,7.063,0.198],_rotation,90.074] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-15.879,10.82,0.446],_rotation,179.29] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-13.218,10.85,0.685],_rotation,179.29] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[2.61,9.115,0.797],_rotation,358.063] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-2.53942,11.0661,0.885168],_rotation,358.781] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-2.40856,9.12032,0.832837],_rotation,358.278] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-1.066,-1.082,0.838],_rotation,92.692] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-5.09117,9.01583,0.815541],_rotation,358.063] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-13.244,8.756,0.683],_rotation,179.29] call _fnc_createObject;
_obj = ["fow_p_table03",_center,[0.943,-11.692,0.801],_rotation,183.219] call _fnc_createObject;
_obj = ["fow_p_table03",_center,[11.8195,10.757,0.903906],_rotation,358.831] call _fnc_createObject;
_obj = ["fow_p_ija_type001_hoki_radio",_center,[1.3014,-11.3006,1.54009],_rotation,245.525] call _fnc_createObject;
_obj = ["Land_Map_Malden_F",_center,[0.905897,-11.5677,1.53128],_rotation,183.734] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[5.98207,-4.67069,1.2532],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[5.90199,-9.88407,1.2532],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-6.26207,-9.97001,1.20259],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-6.20348,-4.21708,0.676431],_rotation,268.792] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[3.89955,-11.8772,1.2532],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[5.91908,-7.56767,0.722092],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-6.22692,-7.18876,0.676431],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-1.7069,-11.9915,1.2532],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-6.2152,-7.13749,1.20754],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-6.27379,-10.0213,0.690392],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[5.9308,-7.51688,1.2532],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[3.95521,-2.29667,0.722092],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[5.89027,-9.93534,0.722092],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[5.97035,-4.72196,0.722092],_rotation,270.886] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-6.19322,-4.16532,1.20754],_rotation,268.792] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-1.75865,-11.9832,0.722092],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-4.3861,-2.35868,0.722092],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[3.84779,-11.8689,0.722092],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-4.38219,-12.055,0.717605],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-4.334,-2.367,1.253],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[4.00697,-2.30497,1.2532],_rotation,359.183] call _fnc_createObject;
_obj = ["Land_WW2_BET_Sandsack_Lang",_center,[-4.33043,-12.0633,1.24872],_rotation,359.183] call _fnc_createObject;
_obj = ["young_palm_03",_center,[7.78268,13.4095,-4.76837e-007],_rotation,91.151] call _fnc_createObject;
_obj = ["young_palm_03",_center,[2.39,7.197,0.909],_rotation,0] call _fnc_createObject;
_obj = ["young_palm_03",_center,[-8.209,12.981,0.539],_rotation,0] call _fnc_createObject;
_obj = ["young_palm_03",_center,[7.928,1.796,-4.76837e-007],_rotation,91.151] call _fnc_createObject;
_obj = ["young_palm_03",_center,[16.297,8.994,-4.76837e-007],_rotation,91.151] call _fnc_createObject;
_obj = ["young_palm_03",_center,[-3.634,12.98,0.445],_rotation,0] call _fnc_createObject;
_obj = ["young_palm_03",_center,[12.6539,12.9138,-4.76837e-007],_rotation,342.888] call _fnc_createObject;
_obj = ["young_palm_03",_center,[12.9353,2.45137,-4.76837e-007],_rotation,118.993] call _fnc_createObject;
_obj = ["palm_01",_center,[-14.032,8.059,1.388],_rotation,0] call _fnc_createObject;
_obj = ["palm_01",_center,[-3.24401,8.43038,0.650577],_rotation,0] call _fnc_createObject;
_obj = ["fow_p_chair",_center,[11.6059,7.67574,0.863464],_rotation,277.046] call _fnc_createObject;
_obj = ["fow_p_chair",_center,[11.8204,10.1135,0.891914],_rotation,171.566] call _fnc_createObject;
_obj = ["fow_p_chair",_center,[1.17787,-10.9305,0.73562],_rotation,30.6448] call _fnc_createObject;
_obj = ["fow_p_chair",_center,[11.3228,8.60695,0.863756],_rotation,190.859] call _fnc_createObject;
_obj = ["fow_p_chair",_center,[12.1499,6.59474,0.863464],_rotation,176.797] call _fnc_createObject;
_obj = ["babe_helper",_center,[0,0,-5],_rotation,0] call _fnc_createObject;
_obj = ["asset_palm_13",_center,[0.514,-11.442,2.534],_rotation,348.249] call _fnc_createObject;
_obj = ["asset_palm_13",_center,[2.192,-12.182,2.8],_rotation,151.169] call _fnc_createObject;
_obj = ["LIB_FlagCarrier_GER",_center,[-3.9721,6.10613,0.0728512],_rotation,0] call _fnc_createObject;
_obj forceFlagTexture A3E_VAR_Flag_Opfor;
_obj = ["fow_p_table04",_center,[10.2082,10.3345,0.782464],_rotation,178.587] call _fnc_createObject;
_obj setvariable ["A3E_isTerminal",true,true];
_obj allowDamage false;



if (count _staticWeaponClasses > 0) then {
    // Statics

    _gun = selectRandom _staticWeaponClasses;
	_obj = [_gun,_center,[-11.17,2.676,-0.0121183],_rotation,245.688] call _fnc_createObject;
	[_obj,A3E_VAR_Side_Opfor] spawn A3E_fnc_AddStaticGunner;
	

};

if (count _parkedVehicleClasses > 0) then {
    // Cars
    _vehicle = selectRandom _parkedVehicleClasses;
	_obj = [_vehicle,_center,[13.6567,-7.09952,0.0233393],_rotation,0] call _fnc_createObject;
    
    

};