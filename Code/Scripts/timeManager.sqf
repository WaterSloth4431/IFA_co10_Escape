// timeManager.sqf
0 spawn {
// Configuration
private _sunriseSunsetTime = date call BIS_fnc_sunriseSunsetTime; // get sunrise/sunset time for the current date
private _dayStartHour = 0;
private _nightStartHour = 0;
private _timeMultiplier = timeMultiplier;
_dayStartHour = _sunriseSunsetTime select 0;
_nightStartHour = _sunriseSunsetTime select 1;

while {true} do {
    private _currentHour = daytime;
    private _isDaytime = (_currentHour >= _dayStartHour) && (_currentHour < _nightStartHour);

    if (_isDaytime) then {
        // Accelerate time during daytime
        setTimeMultiplier _timeMultiplier;

        // Wait for next check
        sleep 60;
    } else {
        // Skip night time
        "Skipping nighttime in 30 seconds." remoteExec ["systemChat", 0];
        sleep 30;
        "Skipping night time." remoteExec ["systemChat", 0];
        private _nightTimeLeft = ((_dayStartHour + 24) - _currentHour) % 24;
        skipTime _nightTimeLeft;
        0 setFog 0;
        sleep 1;
            };
        };
    };