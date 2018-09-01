Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc Dao thach mon
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 13) then
		Say2(10874,1,1,GetName(),
		END_TALK.."/nv_40");
	return end
	if(nValue == 14 and GetLevel() >= 40) then
		nv_401();
	return end
	if(nValue == 16) then
		Say2(10877,1,1,GetName(),
		END_TALK.."/done40");
	return end
	Talk(1,"",14933);
end;

function nv_40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,14));
	if(GetLevel() >= 40) then
		nv_401();
	else
		Talk(1,"",10875);
	end
end

function nv_401()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,15));
	Say2(10876,1,1,GetName(),
		END_TALK.."/no");
	Msg2Player("§i Thôc C­¬ng S¬n t×m Tiªu V« Th­êng");
	AddNote(NOTEHEAD.."®¸nh TiÕu V« Th­êng Thôc C­¬ng S¬n <243/200>");
end

function done40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,17));
	AddOwnExp(280000);
	AddSkillState( 509, 1, 180);
	Msg2Player("B¹n nhËn ®­îc TrÊn Minh Chi Liªn.");
	AddItem(2,0,184,0,0,0,5,0);
	Msg2Player("B¹n nhËn ®­îc 1 chiÕc nhÉn.")
	Msg2Player("B¹n nhËn ®­îc 280.000 ®iÓm kinh nghiÖm");
	Talk(1,"fwd","LÇn nµy may nhê ng­¬i gióp, nh÷ng thø nµy ta tÆng ng­¬i.");
end

function fwd()
	Talk(1,"taytuy",10878);
end;

function taytuy()
	if(GetCamp() == 2) then
	Say("B¹n nhËn ®­îc 1 c¬ héi tÈy ®iÓm kü n¨ng miÔn phİ.",1,"B¾t ®Çu tÈy/taykynang");
	end
end;

function no()
end;