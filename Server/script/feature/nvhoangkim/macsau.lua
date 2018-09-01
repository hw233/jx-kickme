Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
-- Ken Nguyen
-- npc Macsau
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,2);
	if(nValue == 1 and GetItemCount(49) > 0) then
		Say2(10374,1,1,GetName(),
		END_TALK.."/no");
		DelItem(49);
		SetTask(TASK_NVST, SetNumber2(nTaskValue,2,2));
		Msg2Player("M¹c SÇu b¶o b¹n ra bÕn tµu ngoµi thµnh gÆp c« Êy.")
		AddNote(NOTEHEAD.."gÆp M¹c SÇu ngoµi thµnh <204/186>");
	return end
	if(nValue == 3) then
		Say2(10398,1,1,GetName(),
		"§èi tho¹i víi M¹c X¶o Nhi/macxaonhi");
	return end
	if(nValue == 4 and GetLevel() >= 30) then
		Say2(10400,1,1,GetName(),
		END_TALK.."/nv_30");
	return end
	if(nValue == 7) then
		Talk(1, "done30", format("§©y kh«ng ph¶i lµ Hoµng Kim L©n sao? %s B¶n lÜnh cña ng­¬i còng kh«ng tÖ.",GetName()))
	return end
	if(nValue == 8 and GetLevel() >= 40) then
		Say2(10428,1,1,GetName(),
		END_TALK.."/nv_40");
	return end
	if(nValue == 11) then
		Talk(1, "done40", format("Cöu HiÖn Chi ChØ! %s, ta qu¶ nhiªn kh«ng nh×n lÇm ng­êi.",GetName()))
	return end
	if(nValue == 18) then
		Say2(10216,1,0,GetName(),
		"§èi tho¹i víi M¹c SÇu/forward601");
	return end
	Talk(1,"",10373);
end;

function nv_30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,5));
	AddOwnExp(10000);
	Msg2Player("M¹c SÇu b¶o b¹n ®i Thµnh §« TÝn T­íng Tù t×m C«ng Tö TiÕu ®iÒu tra tung tÝch cña Hoµng Kim L©n.")
	AddNote(NOTEHEAD.."t×m C«ng Tö TiÕu Thµnh §« <403/319>");
end;

function nv_40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,9));
	AddOwnExp(15000);
	Msg2Player("M¹c SÇu b¶o b¹n ®i D­¬ng Ch©u t×m  H¹ V« Th¶ ®iÒu tra tung tÝch cña Cöu HiÖn Chi ChØ.")
	AddNote(NOTEHEAD.."t×m H¹ V« Th¶ D­¬ng Ch©u <212/194>");
end;

function macxaonhi()
	Say2(10399,1,0,GetName(),
	END_TALK.."/done20");
	Msg2Player("M¹c SÇu b¶o sau nµy sÏ t×m b¹n.")
end;

function forward601()
	Say2(10242,1,1,GetName(),
		"§èi tho¹i víi Nam Cung Phi V©n/forward602");
end;

function forward602()
	Say2(10286,1,0,GetName(),
		"L¹i ®èi tho¹i víi M¹c SÇu/forward603");
end;

function forward603()
	Say2(10313,1,1,GetName(),
		END_TALK.."/done60");
end;

function done20()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,4));
	AddOwnExp(5000);
	AddSkillState(509,1,180);
	AddItem(0,0,10,2,1,0,0,0);
	AddItem(2,0,183,0,0,0,5,0);
	Msg2Player("B¹n nhËn ®­îc 1 con tuÊn m· vµ 1 ®«i giÇy.")
end;

function done30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,8));
	AddOwnExp(10000);
	AddSkillState(509,1,180);
	Msg2Player("M¹c SÇu nãi sau nµy sÏ t×m b¹n");
	AddItem(2,0,176,0,0,0,5,0);
	Msg2Player("B¹n nhËn ®­îc 1 kh«i m·o.")
	Talk(1,"","Cè g¾ng lªn");
end;

function done40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,12));
	AddOwnExp(20000);
	AddSkillState(509,1,180);
	AddItem(2,0,178,0,0,0,5,0);
	Msg2Player("B¹n nhËn ®­îc 1 h¹ng liªn.")
	Msg2Player("M¹c SÇu nãi sau nµy sÏ t×m b¹n. C« ta sÏ gióp b¹n tiÕn hµnh tÈy tñy, b¹n ®· cã c¬ héi söa ®iÓm kü n¨ng. NÕu b¹n kh«ng thuéc phe chÝnh ph¸i sÏ kh«ng ®­îc c¬ héi nµy.")
	if(GetCamp() == 1) then
	Say("B¹n nhËn ®­îc 1 c¬ héi tÈy ®iÓm kü n¨ng miÔn phÝ.",1,"B¾t ®Çu tÈy/taykynang");
	end
end;

function done60()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,19));
	AddOwnExp(90000);
	AddSkillState(509,1,180);
	Msg2Player("M¹c SÇu sÏ cïng Nam Cung Phi V©n ®Õn Thiªn Long tù gi¶i quyÕt mét sè chuyÖn, b¹n h·y vÒ gÆp Long Ngò.")
end;

function no()
end;