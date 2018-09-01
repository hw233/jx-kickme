
-- Ken Nguyen
-- npc nha mon
function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if (w == 1) then--phuong tuong
	Talk(1,"",10936)
	return end
	if (w == 11) then--thanh do
	Talk(1,"",12628)
	return end
	if (w == 162) then--dai ly
	Talk(1,"",13908)
	return end
	if (w == 78) then--tuong duong
	Talk(1,"",RANDOM(15281,15282))
	return end
	if (w == 37) then--bien kinh
	Talk(1,"",RANDOM(14810,14811))
	return end
	if (w == 80) then--duong chau
	Talk(1,"",RANDOM(15461,15462))
	return end
	if (w == 176) then--lam an
	Talk(1,"",10114)
	return end
	Talk(1,"",10936)
end;
