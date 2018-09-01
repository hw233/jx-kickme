Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc Tran Tam bao
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 19) then
		Say2(10971,1,1,GetName(),
		END_TALK.."/nv_502");
	return end
	if(nValue == 20 and GetLevel() >= 50) then
		Talk(1,"nv_503","B©y giê ng­¬i ®ñ søc gióp ta råi chø?");
	return end
	if(nValue == 22) then
		Say2(11019,1,1,GetName(),
		END_TALK.."/nv_504");
	return end
	Talk(1,"",14735);
end;

function nv_502()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,20));
	if(GetLevel() >= 50) then
		nv_503();
	else
		Talk(1,"",11014);
	end
end

function nv_503()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,21));
	Say2(11018,1,1,GetName(),
		END_TALK.."/no");
	Msg2Player("§Õn Tr­êng Giang Nguyªn §Çu t×m ®¹o tÆc Lôc Phi.");
	AddNote(NOTEHEAD.."®¸nh Lôc Phi Tr­êng Giang Nguyªn §Çu <301/365>");
end

function nv_504()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,23));
	Msg2Player("§Õn Hoµnh S¬n Ph¸i t×m t­íng Kim §å §an.");
	AddNote(NOTEHEAD.."truy s¸t §å §an Hoµnh S¬n Ph¸i <206/203>");
end

function no()
end;