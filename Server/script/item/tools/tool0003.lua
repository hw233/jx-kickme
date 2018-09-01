--Script Created by Ken Nguyen
--kinh nghiem skill
Include("\\script\\header\\taskid.lua");
SKILLEXP_ARRAY=
{
	{"��t Ma �� Giang",318},
	{"Ho�nh T�o Thi�n Qu�n",319},
	{"V� T��ng Tr�m",321},
	{"Ph� Thi�n Tr�m",322},
	{"Truy Tinh Tr�c Nguy�t",323},
	{"Truy Phong Quy�t",325},
	{"�m Phong Th�c C�t",353},
	{"Huy�n �m Tr�m",355},
	{"Nhi�p H�n Nguy�t �nh",339},
	{"C�u Cung Phi Tinh",342},
	{"B�o V� L� Hoa",302},
	{"B�ng Tung V� �nh",336},
	{"B�ng T�m Ti�n T� ",337},
	{"Tam Nga T� Tuy�t",328},
	{"Phong S��ng To�i �nh",380},
	{"V�n Long K�ch",361},
	{"Thi�n Ngo�i L�u Tinh",362},
	{"Phi Long T�i Thi�n",357},
	{"Thi�n H� V� C�u",359},
	{"Ng�o Tuy�t Ti�u Phong",372},
	{"L�i ��ng C�u Thi�n",375},
	{"Thi�n ��a V� C�c",365},
	{"Nh�n Ki�m H�p Nh�t",368}
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
	SkillTab[count] = "Tho�t/no";
	Say("Xin l�a ch�n k� n�ng c�n t�ng kinh nghi�m:", count, SkillTab);
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