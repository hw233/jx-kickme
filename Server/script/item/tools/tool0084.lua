--sach bao toan ky nang
Include("\\script\\header\\taskid.lua");
SKILL_AR=
{
	{"§¹t Ma §é Giang",318},
	{"Hoµnh T¶o Thiªn Qu©n",319},
	{"V« T­íng Tr¶m",321},
	{"Ph¸ Thiªn Tr¶m",322},
	{"Truy Tinh Trôc NguyÖt",323},
	{"Truy Phong QuyÕt",325},
	{"¢m Phong Thùc Cèt",353},
	{"HuyÒn ¢m Tr¶m",355},
	{"NhiÕp Hån NguyÖt ¶nh",339},
	{"Cöu Cung Phi Tinh",342},
	{"B¹o Vò Lª Hoa",302},
	{"B¨ng Tung V« ¶nh",336},
	{"B¨ng T©m Tiªn Tö ",337},
	{"Tam Nga TÒ TuyÕt",328},
	{"Phong S­¬ng To¸i ¶nh",380},
	{"V©n Long KÝch",361},
	{"Thiªn Ngo¹i L­u Tinh",362},
	{"Phi Long T¹i Thiªn",357},
	{"Thiªn H¹ V« CÈu",359},
	{"Ng¹o TuyÕt Tiªu Phong",372},
	{"L«i §éng Cöu Thiªn",375},
	{"Thiªn §Þa V« Cùc",365},
	{"Nh©n KiÕm Hîp NhÊt",368}
};

VALID_SKILLNO = {}
function useitem(nItemIndex)
	local itemlv = GetItemLevel(nItemIndex);
	local SkillTab = {};
	local count = 1;
	local i;
	local lv;
	for i=1, getn(SKILL_AR) do
		lv = GetMagicLevel(SKILL_AR[i][2]);
		if(lv > 0) then
			SkillTab[count] = SKILL_AR[i][1].."/SelSkill";
			VALID_SKILLNO[count] = SKILL_AR[i][2];
			count = count + 1;
		end
	end
	if( count == 1) then
	return end
	SkillTab[count] = "Tho¸t/no";
	Say("Xin lùa chän kü n¨ng cÇn b¶o toµn [cÊp "..itemlv.."]:", count, SkillTab);
	FreezeItem(nItemIndex,1);
	SetTaskTemp(ITEMINDEX,nItemIndex);
end

function SelSkill(sel)
	local nSel = sel + 1
	local itemid = GetTaskTemp(ITEMINDEX)
	local itemlv = GetItemLevel(itemid);
	if(GetMagicLevel(VALID_SKILLNO[nSel]) >= itemlv) then
	FreezeItem(itemid,0);
	Talk(1,"","Kü n¨ng b¹n chän v­ît tréi h¬n ®¼ng cÊp s¸ch, b¹n kh«ng thÓ gi¶m cÊp!")
	return end
	AddMagic(VALID_SKILLNO[nSel],itemlv)
	RemoveItem(itemid,1);
end;

function no()
	FreezeItem(GetTaskTemp(ITEMINDEX),0);
end;
