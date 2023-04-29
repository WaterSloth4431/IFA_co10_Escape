waituntil{!isNil("A3E_EscapeHasStarted")};
	if (!isDedicated && hasInterface) then {
    // Get mission version and readable world name for Discord rich presence
    [
        ["UpdateDetails", ["Version 1.10", "on", getText (configfile >> "CfgWorlds" >> worldName >> "description")] joinString " "],
		["UpdateState","Escaping..."],
		["UpdatePartySize",count playableUnits],
		["UpdatePartyMax",getNumber(missionConfigFile >> "Header" >> "maxPlayers")],
		["UpdateButtons",["Escape Discord","https://discord.gg/Tn4a2CwZcY"]]
    ] call (missionNamespace getVariable ["DiscordRichPresence_fnc_update", {}]);
	};
