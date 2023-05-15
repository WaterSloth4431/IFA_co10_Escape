// Object composition created and exported with Map Builder
// See www.map-builder.info - Map Builder by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"

// WW2 Prison 1

//params and vars already defined in original buildprison function
private["_obj","_pos","_yaw","_pitch","_roll"];
params ["_center","_rotation","_backpack"];

// functions from export script
_fnc_createObject = {
    params["_className","_centerPos","_relativePos","_rotateDir","_relativeDir"];
    private["_object", "_realPos", "_realDir"];

    _realPos = ([_centerPos, [(_centerPos select 0) + (_relativePos select 0), (_centerPos select 1) + (_relativePos select 1),(_relativePos select 2)], _rotateDir] call A3E_fnc_rotatePosition);
    _object = createVehicle [_className, _realPos, [], 0, "CAN_COLLIDE"];
    _object setdir (_relativeDir + _rotateDir);
    _object setPosATL _realPos;
    _object;
};


// set obj to nothing, from export script
private _obj = objNull;

// if server statement, from original buildprisonfuntion
//Stuff that needs to be global. Normally this is the gate and the Loudspeaker
if(isserver) then {
// cleanup terrain
    [_center,25] call a3e_fnc_cleanupTerrain;

// set position of backpack
    _pos = [_center,_center vectorAdd [0,0,0.5],_rotation] call A3E_fnc_rotatePosition;
    _backpack setdir ((getdir _backpack) + _rotation);
    _backpack setPosATL _pos;

// create loudspeaker
    _obj = ["Loudspeakers_EP1",_center,[4.346,-0.568,-0.0410004],_rotation,179.435] call _fnc_createObject;
        A3E_PrisonLoudspeakerObject = _obj;
        publicvariable "A3E_PrisonLoudspeakerObject";

// create shed
    _obj = ["Land_WW2_Fortification_Trench_Bunker_Big_Doors",_center,[-0.042,-0.871,-0.503],_rotation,180.088] call _fnc_createObject;
    A3E_PrisonGateObject = _obj;

    _obj = ["LIB_FlagCarrier_GER",_center,[-7.865,-7.472,-0.0410004],_rotation,271.687] call _fnc_createObject;
    _obj setflagtexture A3E_VAR_Flag_Ind;

_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[5.60342,-4.40097,-0.394122],_rotation,88.5814] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[5.48135,-3.54258,-0.433668],_rotation,270.398] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-5.46055,-4.39414,-0.414246],_rotation,89.5605] call _fnc_createObject;
_obj = ["Land_WW2_Fortification_Trench_Wall",_center,[-5.89072,-3.49082,-0.414246],_rotation,271.377] call _fnc_createObject;
_obj = ["young_palm_03",_center,[4.144,-5.969,0.495],_rotation,5.366] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[5.062,-2.103,1.081],_rotation,4.121] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[7.732,-1.325,0.322],_rotation,4.121] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-7.185,-6.269,0.745],_rotation,4.125] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-5.03142,-1.73854,0.416705],_rotation,4.119] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[4.911,-7.025,0.0510001],_rotation,4.452] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-3.374,-7.612,-0.199],_rotation,4.424] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[-7.396,-1.099,0],_rotation,4.444] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[6.919,-5.794,0.877],_rotation,4.13] call _fnc_createObject;
_obj = ["CUP_koprivy",_center,[0.083,-6.343,1.015],_rotation,4.036] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[6.975,-0.641,0],_rotation,4.121] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[4.53584,-0.0839067,0],_rotation,8.637] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-4.163,1.364,-0.119],_rotation,8.678] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-0.092,-1.068,2.335],_rotation,5.621] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-0.035,1.568,2.319],_rotation,5.567] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[3.29079,-7.13237,0.0434203],_rotation,4.13] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[0.115627,-7.51352,0.147074],_rotation,4.036] call _fnc_createObject;
_obj = ["CUP_c_GrassAutumn",_center,[-4.62321,-7.37365,0],_rotation,4.125] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-7.195,-7.032,0.0342498],_rotation,4.448] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[2.561,-7.441,-0.34],_rotation,4.384] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-7.487,-0.385,-0.401],_rotation,4.444] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[-2.803,-5.928,0.878035],_rotation,4.125] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[5.939,-1.407,0.363],_rotation,4.121] call _fnc_createObject;
_obj = ["Land_Bare_boulder_02_F",_center,[5.37,-5.595,1.206],_rotation,273.359] call _fnc_createObject;
_obj = ["palm_01",_center,[-4.788,0.094,-0.458],_rotation,5.366] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-7.096,-3,0.184],_rotation,1.11] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[6.998,-2.911,0.15],_rotation,358.805] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[4.385,-2.982,0.165],_rotation,0.131] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[4.216,-4.903,0.177],_rotation,358.805] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[1.237,-4.971,0.246],_rotation,359.785] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-4.093,-4.982,0.246],_rotation,359.785] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-6.824,-5.02,0.196],_rotation,359.785] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[6.941,-4.873,0.227],_rotation,358.805] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-4.41,-2.966,0.169],_rotation,359.785] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-1.439,-4.979,0.246],_rotation,359.785] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-8.647,-6.59,-0.0409999],_rotation,87.491] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[-8.977,-1.399,0],_rotation,89.376] call _fnc_createObject;
_obj = ["asset_palm_11",_center,[8.745,-3.984,0.146],_rotation,90.958] call _fnc_createObject;






};





