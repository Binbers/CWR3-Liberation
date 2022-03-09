params [["_item",""]];
if !(vehicle player isEqualto player) exitWith {hint "You can't place items while in a vehicle!"};
if (customCover_placing isEqualTo "true") exitWith {hint "Your already placing an object!"};
if (_item isEqualTo "") exitWith {hint "Non-existant item selected!"};

customCover_object_height = 0.5;
customCover_object_front = 2;
customCover_object_side = 0;
customCover_object_rotationA = 0;
customCover_object_rotationB = 0;
customCover_object_rotationC = 0;

_lb = ((findDisplay 185665) displayCtrl 1);
_cost = (_lb lbValue (lbCurSel _lb));
customCover_credits = customCover_credits - _cost;
if (customCover_credits < 0) then {customCover_credits = 0};

closeDialog 0;
_obj = [_item, [0,0,0], getDir player] call BIS_fnc_createSimpleObject;
if (_obj isEqualTo objNull) exitWith {hint "An error occured while creating the object"};
_obj attachTo [player,[0,2,0.5]];
_obj setVectorUp [0, 0, 1];
customCover_placing = "true";


waitUntil{
[format["
<t font = 'PuristaBold' size = '.5'>
<t align='left' size='0.6'>NUMPAD KEYBINDS</t><t align='right' size='0.6'>OBJECT INFO</t><br/>
<t align='left'>[7 | 9] Rotate Object</t><t align='right'>[%1,%2,%3]</t><br/>
<t align='left'>[8 | 2] Pitch Object</t><t align='right'>[%4,%5,%6]</t><br/>
<t align='left'>[1 | 3] Bank Object</t><t align='right'></t><br/>
<t align='left'>[- | +] Change Height</t><t align='right'></t><br/>
<t align='left'>[5] Reset Object</t><t align='right'></t><br/>
<br/>
<t align='left'>== SHIFT ==</t><t align='right'></t><br/>
<t align='left'>[8 | 4 | 6 | 2] Change Height</t><t align='right'></t><br/>
<t align='left'>[7 | 9] Rotate Object 90°</t><t align='right'></t><br/>
<t align='left'>[NUM ENTER] Place Object</t><t align='right'></t><br/>
<t align='left'>[ · ] Cancel Placement</t><t align='right'></t><br/>
</t>",customCover_object_side,customCover_object_front,customCover_object_height,customCover_object_rotationA,customCover_object_rotationB,customCover_object_rotationC],-1,0,0.2,0,0,35919] spawn BIS_fnc_dynamicText;
  _obj attachTo [player,[customCover_object_side,customCover_object_front,customCover_object_height]];
  [_obj,[customCover_object_rotationA,customCover_object_rotationB,customCover_object_rotationC]] call fnc_SetPitchBankYaw;
  customCover_placing isEqualTo "false" || customCover_placing in ["fired","getInMan","menu"]
};
if (customCover_placing in ["fired","getInMan","menu"]) exitWith {
  hint "Item placement canceled!";
  detach _obj;
  deleteVehicle _obj;
  customCover_credits = customCover_credits + _cost;
  customCover_placing = "false";
};
hint "Item placed";
detach _obj;
_obj setVariable ["CC_placed",true,true];
player playActionNow "Medic";