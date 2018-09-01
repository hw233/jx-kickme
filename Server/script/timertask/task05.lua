
function OnTimer()
	StopTimer();
	Msg2Player("B¹n ®· gia nhËp <color=green>"..GetFaction());
end;

function OnMissionTimer(nIndex)
	StopMissionTimer(nIndex,5);
end;