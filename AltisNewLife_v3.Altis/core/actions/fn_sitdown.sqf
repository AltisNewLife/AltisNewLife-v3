_chair = _this select 0; 
_unit = _this select 1; 
[[_unit, "Crew"],"life_fnc_switchMove",nil,true] spawn life_fnc_MP;
_unit setPos (getPos _chair); 
_unit setDir ((getDir _chair) - 180);
removeAllActions player;
standup = _unit addAction ["<t color='#FFFFFF'>Se lever</t>","scripts\standup.sqf"];
_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];