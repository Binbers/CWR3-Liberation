class ACCS_MENU {
  idd = 185665;
  name = "ACCS_MENU";
  movingEnable = false;
  enableSimulation = true;
  onLoad = " [185665] spawn customCover_fnc_dialogFadeIn; [] spawn customCover_fnc_menuInit; ";

  class controlsBackground {
    class Background1: Cover_RscText
  	{
  		idc = -1;
  		x = 0.304062 * safezoneW + safezoneX;
  		y = 0.247 * safezoneH + safezoneY;
  		w = 0.391875 * safezoneW;
  		h = 0.022 * safezoneH;
  		colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  	};
  	class Background2: Cover_RscText
  	{
  		idc = -1;
  		x = 0.304062 * safezoneW + safezoneX;
  		y = 0.269 * safezoneH + safezoneY;
  		w = 0.391875 * safezoneW;
  		h = 0.484 * safezoneH;
  		colorBackground[] = {-1,-1,-1,0.7};
  	};
  };

  class controls {
    class AvaliableCoverListbox: Cover_RscListbox
  	{
  		idc = 1;
  		x = 0.314375 * safezoneW + safezoneX;
  		y = 0.291 * safezoneH + safezoneY;
  		w = 0.134062 * safezoneW;
  		h = 0.374 * safezoneH;
  		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
  	};
  	class InfoControlGroup: Cover_RscControlsGroup
  	{
  		idc = -1;
  		x = 0.45875 * safezoneW + safezoneX;
  		y = 0.291 * safezoneH + safezoneY;
  		w = 0.226875 * safezoneW;
  		h = 0.374 * safezoneH;
  		colorBackground[] = {-1,-1,-1,0};
  		class Controls
  		{
  			class InfoTextBox: Cover_RscStructuredText
  			{
  				idc = 3;
  				text = "";
  				x = 0 * safezoneW;
  				y = 0 * safezoneH;
  				w = 0.226875 * safezoneW;
  				h = 0.374 * safezoneH;
  				colorBackground[] = {-1,-1,-1,0};
  			};
  		};
  	};
  	class PlaceButton: Cover_RscButton
  	{
  		idc = 10;
  		text = "PLACE ITEM";
  		x = 0.45875 * safezoneW + safezoneX;
  		y = 0.676 * safezoneH + safezoneY;
  		w = 0.226875 * safezoneW;
  		h = 0.055 * safezoneH;
  		onButtonClick = "[((findDisplay 185665) displayCtrl 1) lbData (lbCurSel ((findDisplay 185665) displayCtrl 1))] spawn customCover_fnc_placeItem";
  		colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  		colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  		font = "PuristaBold";
  		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      tooltip = "Place selected item";
  	};
    class TransferButton: Cover_RscButton
  	{
  		idc = 15;
  		text = "TRANSFER CREDITS";
  		x = 0.314375 * safezoneW + safezoneX;
  		y = 0.676 * safezoneH + safezoneY;
  		w = 0.134062 * safezoneW;
  		h = 0.055 * safezoneH;
  		onButtonClick = "createDialog 'ACCS_TRANS_MENU'; ";
  		colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  		colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  		font = "PuristaBold";
  		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      tooltip = "Transfer credits between players";
  	};
  };
};

class ACCS_TRANS_MENU {
  idd = 185666;
  name = "ACCS_TRANS_MENU";
  movingEnable = false;
  enableSimulation = true;
  onLoad = " [185666] spawn customCover_fnc_dialogFadeIn; [] spawn customCover_fnc_transferInit; ";

  class controlsBackground {
    class background1: Cover_RscText
    {
    	idc = -1;
    	x = 0.365937 * safezoneW + safezoneX;
    	y = 0.445 * safezoneH + safezoneY;
    	w = 0.268125 * safezoneW;
    	h = 0.022 * safezoneH;
    	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
    };
    class background2: Cover_RscText
    {
    	idc = -1;
    	x = 0.365937 * safezoneW + safezoneX;
    	y = 0.467 * safezoneH + safezoneY;
    	w = 0.268125 * safezoneW;
    	h = 0.132 * safezoneH;
    	colorBackground[] = {-1,-1,-1,0.7};
    };
  };

  class controls {
    class playerList: Cover_RscCombo
    {
    	idc = 1;
    	x = 0.37625 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.2475 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class amountList: Cover_RscSlider
    {
    	idc = 5;
    	x = 0.37625 * safezoneW + safezoneX;
    	y = 0.511 * safezoneH + safezoneY;
    	w = 0.2475 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class TransferButton: Cover_RscButton
    {
    	idc = 10;
    	text = "Transfer 0 Credit(s)";
    	x = 0.37625 * safezoneW + safezoneX;
    	y = 0.544 * safezoneH + safezoneY;
    	w = 0.2475 * safezoneW;
    	h = 0.033 * safezoneH;
      onButtonClick = "_combo = (findDisplay 185666) displayCtrl 1;_slider = (findDisplay 185666) displayCtrl 5;_button = (findDisplay 185666) displayCtrl 10;_data = _combo lbData (lbCurSel _combo); if (_data isEqualTo """") exitWith {}; _playerObj = [_data] call BIS_fnc_getUnitByUid; hint format[""You have transfered %1 credits to %2"",round sliderPosition _slider, name _playerObj]; customCover_credits = customCover_credits - (round sliderPosition _slider);[round sliderPosition _slider] remoteExec [""customCover_fnc_transferCredits"",_playerObj]; closeDialog 0; ";
      colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  		colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  		font = "PuristaBold";
  		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    };
  };
};
