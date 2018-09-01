
function main()
	if(GetItemCount(56) > 0) then
	Say(11282,2,
		"B¸n/ban",
		"Kh«ng b¸n/no")
	else
	Talk(1,"",RANDOM(11284,11286))
	end
end;

function ban()
	if(GetItemCount(56) > 0) then
	DelItem(56)
	Earn(1500)
	Talk(1,"",11287)
	Msg2Player("§­a bøc th­ ph¸p cho ng­êi du kh¸ch lÊy ®­îc 1500 l­îng")
	end
end;

function no()
	Talk(1,"",11288)
end;
