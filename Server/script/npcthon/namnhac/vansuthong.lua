
ENDTALK = "K�t th�c ��i tho�i/no"
function main(NpcIndex)
	Say(11439,2,
	"T�m m�t ng��i/timnguoi",
	ENDTALK)
end;

function timnguoi()
	Say(11439,2,
	"�i�n t�n ng��i �� v�o ��y. C�ng c� th� nh�n v�o t�n h�n trong t�n s� ho�c danh s�ch/opentim",
	ENDTALK)
end;

function opentim()
	Input("timten")
end;

function timten(num, name)
	if(GetCash() < 20000) then
	Talk(1,"",11441);
	return end;
	local nPlayer = FindPlayer(name);
	if(nPlayer <= 0) then
	Msg2Player("Ng��i mu�n t�m hi�n kh�ng c� tr�n m�ng!")
	return end
	local tempid = PlayerIndex;
	PlayerIndex = nPlayer;
	local w,x,y = GetWorldPos();
	PlayerIndex = tempid;
	Pay(20000);
	Talk(1,"",name.." �ang � "..GetSubWorldName(w).." t�a �� "..floor(x/256).."/"..floor(y/512));
end;

function noinput()
end;

function no()
end;