Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc thai cong cong
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 2) then
		Say2(10674,1,1,GetName(),
		END_TALK.."/nv_201");
	return end
	if(nValue == 4) then
		Say2(10704,1,1,GetName(),
		END_TALK.."/nv_202");
	return end
	Talk(1,"",10675);
end;

function nv_201()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,3));
	Msg2Player("§i lªn Phôc Ng­u S¬n ®«ng t×m Kim phËt.")
	AddNote(NOTEHEAD.."®¸nh TiÓu Kú Nhi  Phôc Ng­u S¬n ®«ng <226/205>");
end

function nv_202()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,5));
	Msg2Player("B¹n nhËn ®­îc 1 b×nh Thiªn H­¬ng Ngäc Chi Cao. Mang vÒ cho V©n Nhi.")
end

function no()
end;