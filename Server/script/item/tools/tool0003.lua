--Script Created by Ken Nguyen
--kinh nghiem skill
Include("\\script\\header\\taskid.lua");
SKILLEXP_ARRAY=
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
	{"V©n Long Kİch",361},
	{"Thiªn Ngo¹i L­u Tinh",362},
	{"Phi Long T¹i Thiªn",357},
	{"Thiªn H¹ V« CÈu",359},
	{"Ng¹o TuyÕt Tiªu Phong",372},
	{"L«i §éng Cöu Thiªn",375},
	{"Thiªn §Şa V« Cùc",365},
	{"Nh©n KiÕm Hîp NhÊt",368}
};

VALID_SKILLNO = {};

function useitem(nItemIndex)
	local SkillTab = {};
	local count = 1;
	local i;
	local lv;
	for i=1, getn(SKILLEXP_ARRAY) do
		lv = GetMagicLevel(SKILLEXP_ARRAY[i][2]);
		if(lv > 0 and lv < 20) then
			SkillTab[count] = SKILLEXP_ARRAY[i][1].."/SelSkill";
			VALID_SKILLNO[count] = SKILLEXP_ARRAY[i][2];
			count = count + 1;
		end
	end
	if( count == 1) then
	return end
	SkillTab[count] = "Tho¸t/no";
	Say("Xin lùa chän kü n¨ng cÇn t¨ng kinh nghiÖm:", count, SkillTab);
	FreezeItem(nItemIndex,1);
	SetTaskTemp(ITEMINDEX,nItemIndex);
end;

function SelSkill(sel)
	local nSel = sel + 1
	AddSkillExp(VALID_SKILLNO[nSel],5000)
	RemoveItem(GetTaskTemp(ITEMINDEX),1);
end;

function no()
	FreezeItem(GetTaskTemp(ITEMINDEX),0);
end;