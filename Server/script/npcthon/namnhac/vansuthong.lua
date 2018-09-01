
ENDTALK = "KÕt thóc ®èi tho¹i/no"
function main(NpcIndex)
	Say(11439,2,
	"T×m mét ng­êi/timnguoi",
	ENDTALK)
end;

function timnguoi()
	Say(11439,2,
	"§iÒn tªn ng­êi ®ã vµo ®©y. Còng cã thÓ nhÊn vµo tªn h¾n trong tÇn sè hoÆc danh s¸ch/opentim",
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
	Msg2Player("Ng­êi muèn t×m hiÖn kh«ng cã trªn m¹ng!")
	return end
	local tempid = PlayerIndex;
	PlayerIndex = nPlayer;
	local w,x,y = GetWorldPos();
	PlayerIndex = tempid;
	Pay(20000);
	Talk(1,"",name.." ®ang ë "..GetSubWorldName(w).." täa ®é "..floor(x/256).."/"..floor(y/512));
end;

function noinput()
end;

function no()
end;