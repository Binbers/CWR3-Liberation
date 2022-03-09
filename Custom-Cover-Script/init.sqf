
customCover_credits = getNumber(missionConfigFile >> "CfgCustomCover" >> "startCredits");
allowPlacedItemPickup = getNumber(missionConfigFile >> "CfgCustomCover" >> "allowPlacedItemPickup");

[] spawn {
  waitUntil{time > 0};
  sleep 1;
  customCover_placing = "false";
  _items = [];
  _items = getArray (missionConfigFile >> "CfgCustomCover" >> "items");
  if(_items isEqualTo [])exitWith{hint "An error has occured and an item list could not be found!"};
  customCover_avaliablePickup = [];
  {
    customCover_avaliablePickup = customCover_avaliablePickup + [_x#0];
  }forEach _items;
  _actionID = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this#1 isEqualTo 76 && _this#2) then {createDialog ""ACCS_MENU""; true};"];
  if(_actionID isEqualTo -1)then{
    systemChat "Error occured while adding Custom Cover KeyDown eventhandler!";
  }else{
    systemChat "Custom Cover Keybind added! Press (SHIFT - NUMPAD 5) to open the menu.";
    systemChat "Press (SHIFT - NUMPAD PERIOD) to dismantle avaliable objects.";
  };
  (findDisplay 46) displayAddEventHandler ["KeyDown","

  if (_this#1 isEqualTo 83) exitWith {
    if !(_this#2) exitWith {};
    if !(vehicle player isEqualTo player) exitWith {false};
    if (customCover_placing isEqualTo 'true') exitWith {
      customCover_placing = 'menu';
      false
    };
    _object = lineIntersectsObjs [(eyePos player),((eyePos player) vectorAdd (getCameraViewDirection player vectorMultiply 3)),objNull,objNull,false,2];
    survive_cursorObject = _object#0;
    if !(count _object > 0) exitWith {false};
    _object = _object#0;
    if !(typeOf _object in customCover_avaliablePickup) exitWith {false};
    _items = [];
    _items = getArray (missionConfigFile >> ""CfgCustomCover"" >> ""items"");
    if(_items isEqualTo [])exitWith{hint ""An error has occured and an item list could not be found!""};
    if (allowPlacedItemPickup isEqualTo 1) then {
      player playActionNow ""Medic"";
      _cost = 0;
      {
        _item = _x#0;
        _costStart = _x#1;
        if (_item isEqualTo typeOf _object) then {
          _cost = _costStart;
        };
      }forEach _items;
      [_object,_cost] spawn {
        _object = _this#0;
        _cost = _this#1;
        [format[""<t font = 'PuristaBold' size = '.5'>COLLECTING %1 CREDITS</t>"",_cost],-1,0,5,0,0,35919] spawn BIS_fnc_dynamicText;
        if(!alive player)exitWith{};
        deleteVehicle _object;
        customCover_credits = customCover_credits + _cost;
        [format[""<t font='PuristaSemiBold' align='Left' size = '.5'>+%1 credit(s)</t>"",_cost],0.005 * safezoneW + safezoneX,0.9 * safezoneH + safezoneY,4,1,0.25,(25896 + (round random 12000))] spawn BIS_fnc_dynamicText;
      };
    }else{
      if !(_object getVariable [""CC_placed"",false]) exitWith {
        [""<t font = 'PuristaMedium' size = '.5'>YOU CANNOT REMOVE MISSION OBJECTS</t>"",-1,0,1.5,0,0,35918] spawn BIS_fnc_dynamicText;
        false
      };
      player playActionNow ""Medic"";
      _cost = 0;
      {
        _item = _x#0;
        _costStart = _x#1;
        if (_item isEqualTo typeOf _object) then {
          _cost = _costStart;
        };
      }forEach _items;
      [_object,_cost] spawn {
        _object = _this#0;
        _cost = _this#1;
        [format[""<t font = 'PuristaBold' size = '.5'>COLLECTING %1 CREDITS</t>"",_cost],-1,0,5,0,0,35919] spawn BIS_fnc_dynamicText;
        if(!alive player)exitWith{};
        deleteVehicle _object;
        customCover_credits = customCover_credits + _cost;
        [format[""<t font='PuristaSemiBold' align='Left' size = '.5'>+%1 credit(s)</t>"",_cost],0.005 * safezoneW + safezoneX,0.9 * safezoneH + safezoneY,4,1,0.25,(25896 + (round random 12000))] spawn BIS_fnc_dynamicText;
      };
    };
    true
  };


  if !(customCover_placing isEqualTo 'true') exitWith {};
  switch (_this#1) do {
    case (80): {
      if (_this#2) then {
          customCover_object_front = customCover_object_front - 0.01;
          if (customCover_object_front < 0) then {
            customCover_object_front = 0;
          };
      }else{
        customCover_object_rotationA = customCover_object_rotationA + 1;
      };
      true
    };
    case (72): {
      if (_this#2) then {
          customCover_object_front = customCover_object_front + 0.01;
          if (customCover_object_front > 3) then {
            customCover_object_front = 3;
          };
      }else{
        customCover_object_rotationA = customCover_object_rotationA - 1;
      };
      true
    };

    case (75): {
      if (_this#2) then {
          customCover_object_side = customCover_object_side - 0.01;
          if (customCover_object_side < -3) then {
            customCover_object_side = -3;
          };
          true
      }else{
        false
      };
    };
    case (77): {
      if (_this#2) then {
          customCover_object_side = customCover_object_side + 0.01;
          if (customCover_object_side > 3) then {
            customCover_object_side = 3;
          };
          true
      }else{
        false
      };
    };


    case (81): {
      if (_this#2) exitWith {};
      customCover_object_rotationB = customCover_object_rotationB + 1;
      true
    };
    case (79): {
      if (_this#2) exitWith {};
      customCover_object_rotationB = customCover_object_rotationB - 1;
      true
    };


    case (73): {
      if (_this#2) exitWith {
        customCover_object_rotationC = customCover_object_rotationC + 90;
        true
      };
      customCover_object_rotationC = customCover_object_rotationC + 1;
      true
    };
    case (71): {
      if (_this#2) exitWith {
        customCover_object_rotationC = customCover_object_rotationC - 90;
        true
      };
      customCover_object_rotationC = customCover_object_rotationC - 1;
      true
    };


    case (74): {
      if (_this#2) exitWith {};
      customCover_object_height = customCover_object_height - 0.01;
      if (customCover_object_height < -3) then {customCover_object_height = -3};
      true
    };
    case (78): {
      if (_this#2) exitWith {};
      customCover_object_height = customCover_object_height + 0.01;
      if (customCover_object_height > 3) then {customCover_object_height = 3};
      true
    };

    case (76): {
      if (_this#2) exitWith {};
      customCover_object_height = 0.5;
      customCover_object_front = 2;
      customCover_object_side = 0;
      customCover_object_rotationA = 0;
      customCover_object_rotationB = 0;
      customCover_object_rotationC = 0;
      true
    };

    case (156): {
      if !(_this#2) exitWith {};
      customCover_placing = ""false"";
      true
    };

    default {false};
  };
  "];
};

player addEventHandler ["Fired", {
  if (customCover_placing isEqualTo "true") then {customCover_placing = "fired";};
  false
}];

player addEventHandler ["GetInMan", {
	if (customCover_placing isEqualTo "true") then {customCover_placing = "getInMan";};
  false
}];

fnc_SetPitchBankYaw = {
    private ["_object","_rotations","_aroundX","_aroundY","_aroundZ","_dirX","_dirY","_dirZ","_upX","_upY","_upZ","_dir","_up","_dirXTemp",
    "_upXTemp"];
    _object = _this select 0;
    _rotations = _this select 1;
    _aroundX = _rotations select 0;
    _aroundY = _rotations select 1;
    _aroundZ = (360 - (_rotations select 2)) - 360;
    _dirX = 0;
    _dirY = 1;
    _dirZ = 0;
    _upX = 0;
    _upY = 0;
    _upZ = 1;
    if (_aroundX != 0) then {
        _dirY = cos _aroundX;
        _dirZ = sin _aroundX;
        _upY = -sin _aroundX;
        _upZ = cos _aroundX;
    };
    if (_aroundY != 0) then {
        _dirX = _dirZ * sin _aroundY;
        _dirZ = _dirZ * cos _aroundY;
        _upX = _upZ * sin _aroundY;
        _upZ = _upZ * cos _aroundY;
    };
    if (_aroundZ != 0) then {
        _dirXTemp = _dirX;
        _dirX = (_dirXTemp* cos _aroundZ) - (_dirY * sin _aroundZ);
        _dirY = (_dirY * cos _aroundZ) + (_dirXTemp * sin _aroundZ);
        _upXTemp = _upX;
        _upX = (_upXTemp * cos _aroundZ) - (_upY * sin _aroundZ);
        _upY = (_upY * cos _aroundZ) + (_upXTemp * sin _aroundZ);
    };
    _dir = [_dirX,_dirY,_dirZ];
    _up = [_upX,_upY,_upZ];
    _object setVectorDirAndUp [_dir,_up];
};
