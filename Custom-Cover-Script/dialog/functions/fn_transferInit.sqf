params [
["_display",findDisplay 185666],
["_combo",(findDisplay 185666) displayCtrl 1],
["_slider",(findDisplay 185666) displayCtrl 5],
["_button",(findDisplay 185666) displayCtrl 10]
];

{
	_name = name _x;
	_combo lbAdd _name;
	_combo lbSetData [(lbSize _combo)-1,getPlayerUID _x];
}forEach ((allPlayers - entities "HeadlessClient_F") - [player]);

_combo lbSetCurSel 0;

_slider sliderSetRange [ 0, customCover_credits];
_slider sliderSetPosition 0;
_slider ctrlSetTooltip format["%1 Credit(s)",floor sliderPosition _slider];

_button ctrlSetText format["Tranfer %1 Credit(s)",floor sliderPosition _slider];

_slider ctrlAddEventHandler ["SliderPosChanged","
	params [""_control"", ""_newValue""];

	((findDisplay 185666) displayCtrl 5) ctrlSetTooltip format[""%1 Credit(s)"",round _newValue];
	((findDisplay 185666) displayCtrl 10) ctrlSetText format[""Transfer %1 Credit(s)"",round _newValue];

	if (_newValue > customCover_credits) then {
		((findDisplay 185666) displayCtrl 10) ctrlEnable false;
	}else{
		((findDisplay 185666) displayCtrl 10) ctrlEnable true;
	};
"];
