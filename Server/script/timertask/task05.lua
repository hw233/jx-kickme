
function OnTimer()
	StopTimer();
	Msg2Player("B�n �� gia nh�p <color=green>"..GetFaction());
end;

function OnMissionTimer(nIndex)
	StopMissionTimer(nIndex,5);
end;