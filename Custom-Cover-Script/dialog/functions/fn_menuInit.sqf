params [
["_display",findDisplay 185665],
["_lb",(findDisplay 185665) displayCtrl 1],
["_info",(findDisplay 185665) displayCtrl 3],
["_button",(findDisplay 185665) displayCtrl 10]
];

_items = [];
_items = getArray (missionConfigFile >> "CfgCustomCover" >> "items");
if(_items isEqualTo [])exitWith{hint "An error has occured and an item list could not be found!"};

{
	_item = _x#0;
	_cost = _x#1;
	_name = getText(configfile >> "CfgVehicles" >> _item >> "displayName");
	_lb lbAdd _name;
	_lb lbSetTooltip [(lbSize _lb)-1, format["%1\nCredit Cost: %2",_name,_cost]];
	_lb lbSetValue [(lbSize _lb)-1, _cost];
	_lb lbSetData [(lbSize _lb)-1, _item];
} forEach _items;

_lb ctrlAddEventHandler ["LBSelChanged","
	params [""_control"",""_selectedIndex""];
	_item = _control lbData _selectedIndex;
	_name = getText(configfile >> ""CfgVehicles"" >> _item >> ""displayName"");
	_image = getText(configfile >> ""CfgVehicles"" >> _item >> ""editorPreview"");
	_author = getText(configfile >> ""CfgVehicles"" >> _item >> ""author"");
	_obj = _item createVehicleLocal [0,0,0];
	_bB = boundingBox _obj;
	deleteVehicle _obj;
	_length = abs (_bB#0#0 - _bB#1#0) toFixed 1; _width = abs (_bB#0#1 - _bB#1#1) toFixed 1; _height = abs (_bB#0#2 - _bB#1#2) toFixed 1;
	_cost = (_control lbValue _selectedIndex);

	_infoText = format[""<t align='center'>Credit Cost: %1</t><br/><t align='center'>%2m x %3m x %4m</t><br/><br/><t align='center' shadow='0' size='7'><img image='%5' /></t>"",_cost,_length,_width,_height,_image];
	((findDisplay 185665) displayCtrl 3) ctrlSetStructuredText parseText format[""<t font = 'PuristaBold'><t font='PuristaBold' size='1' align='left'>Avaliable Credits: %1</t><br/><t font='PuristaBold' align='center' size='1.45'>%2</t><br /><br/>%3"",customCover_credits,_name,_infoText];
	[((findDisplay 185665) displayCtrl 3)] call BIS_fnc_ctrlFitToTextHeight;

	if (_cost > customCover_credits) then {
		((findDisplay 185665) displayCtrl 10) ctrlEnable false;
	}else{
		((findDisplay 185665) displayCtrl 10) ctrlEnable true;
	};
"];

_lb lbSetCurSel 0;
_item = _lb lbData 0;
_name = getText(configfile >> "CfgVehicles" >> _item >> "displayName");
_image = getText(configfile >> "CfgVehicles" >> _item >> "editorPreview");
_author = getText(configfile >> "CfgVehicles" >> _item >> "author");
_obj = _item createVehicleLocal [0,0,0];
_bB = boundingBox _obj;
deleteVehicle _obj;
_length = abs (_bB#0#0 - _bB#1#0) toFixed 1; _width = abs (_bB#0#1 - _bB#1#1) toFixed 1; _height = abs (_bB#0#2 - _bB#1#2) toFixed 1;
_cost = (_lb lbValue 0);

_infoText = format["<t align='center'>Credit Cost: %1</t><br/><t align='center'>%2m x %3m x %4m</t><br/><br/><t align='center' shadow='0' size='7'><img image='%5' /></t>",_cost,_length,_width,_height,_image];
((findDisplay 185665) displayCtrl 3) ctrlSetStructuredText parseText format["<t font = 'PuristaBold'><t font='PuristaBold' size='1' align='left'>Avaliable Credits: %1</t><br/><t font='PuristaBold' align='center' size='1.45'>%2</t><br /><br/>%3",customCover_credits,_name,_infoText];
[((findDisplay 185665) displayCtrl 3)] call BIS_fnc_ctrlFitToTextHeight;
if (_cost > customCover_credits) then {
	((findDisplay 185665) displayCtrl 10) ctrlEnable false;
}else{
	((findDisplay 185665) displayCtrl 10) ctrlEnable true;
};
