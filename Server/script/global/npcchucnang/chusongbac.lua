
-- Ken Nguyen
-- npc chu song bac
function main(NpcIndex)
	Talk(4,"giaodich",10007,10008,10010,10011)
end;

function giaodich()
	Say(10012,2,
		"Ch¬i mét v¸n/choi",
		"Kh«ng thÝch cê b¹c/no")
end

function choi()
	OpenDice()
end;

function no()
end;
