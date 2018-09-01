Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc pho loi thu
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 10) then
		Say2(10842,1,1,GetName(),
		"§­a 1 v¹n l­îng/nv_303");
	return end
	if(nValue == 12) then
		Say2(10847,1,1,GetName(),
		END_TALK.."/done30");
	return end
	if(nValue == 17) then
		Say2(10900,1,1,GetName(),
		END_TALK.."/nv_50");
	return end
	Talk(1,"","Khô Khô... L¹i ®Õn t×m l·o cã chuyÖn g×?");
end;

function nv_303()
	if(GetCash() < 10000) then
		Talk(1,"",10845);
	else
		Pay(10000);
		SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,11));
		Msg2Player("Phã L«i Th­ b¶o gÇn ®©y Tang Chu th­êng xuÊt hiÖn ë L©m An <210/203>");
		AddNote(NOTEHEAD.."®Õn L©m An t×m Tang Chu <210/203>");
		Say2(10848,1,1,GetName(),
		END_TALK.."/no");
	end
end

function nv_50()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,18));
	Msg2Player("B¹n lªn BiÖn Kinh dß la tin tøc, t×nh cê gÆp Nh­ Ngäc <210/196>.");
	AddNote(NOTEHEAD.."lªn BiÖn Kinh gÆp Nh­ Ngäc <210/196>");
end

function done30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,13));
	AddOwnExp(80000);
	AddSkillState( 509, 1, 180);
	AddItem(2,0,182,0,0,0,5,0);
	Msg2Player("B¹n nhËn ®­îc 1 ngäc béi.")
	Msg2Player("B¹n nhËn ®­îc 80.000 ®iÓm kinh nghiÖm");
	Talk(1,"","B¹n trÎ! Giang hå rÊt nguy hiÓm! Ta cã vËt nµy cã thÓ gióp ®­îc ng­¬i.");
	AddNote(NOTEHEAD.."®Õn Vâ §ang ph¸i t×m §µo Th¹ch M«n");
end

function no()
end;