--Ken Nguyen 2014--
--script cua game master--
--nIndex la Id cua nguoi choi muc tieu
--file nay khi chay la tu reload nen co the chinh sua thoai mai, co tac dung ngay lap tuc'
Include("\\script\\header\\monphaiheader.lua");
Include("\\script\\global\\npcchucnang\\phantang.lua");
Include("\\script\\header\\skill150.lua");
Include("\\script\\item\\\\tools\\tool0059.lua");
Include("\\script\\startgame\\khoitaoserver.lua");
Include("\\script\\header\\trungsinh.lua");
LEVEL_ARRAY ={
{1,"1 c�p"},
{2,"2 c�p"},
{5,"5 c�p"},
{10,"10 c�p"},
{20,"20 c�p"},
{50,"50 c�p"},
{100,"100 c�p"}
};

function main(nIndex)
    if(GetAccount() == "GameMaster") then
	SetTaskTemp(DESPLAYERID, nIndex)
	Say("S� d�ng t�nh n�ng:",8,
	"T�ng giam v�o ng�c/tonggiam",
	"T�c ��ng l�n m�c ti�u/muctieu",
	"Thao t�c v�i ch�nh m�nh/myself",
	"T�m nh�n v�t/opentim",
	"T�i l�i script/reload",
	"L�u data.ini/savedata",
	"Add NPC/opennpc",
	"Tho�t/no")
end
end;

function opennpc()
	addfullnpc()
end;

function muctieu()
	local nIdx = GetTaskTemp(DESPLAYERID);
	PlayerIndex = nIdx;
	--bat dau thao tac voi muc tieu--------------------
	--RemoveItem(106,1);
	--KillPlayer();
end;

function myself()	--thao tac voi chinh minh
	Say2("Thao t�c v�i ch�nh m�nh:",8,0,"",
	"L�n c�p/tangcap",
	"Nh�n �� /nhanitem",
	"Ki�m t�a �� /toado",
	"Th�m �i�m F3-F5/tiemnang",
	"K� n�ng/kynang",
	"C�ng ti�m n�ng/cong",
	"Kh�c/linhtinh",
	"Tho�t/no")
end;

function linhtinh()
	--Earn(50000000)
	--ClearSkill();
	--DelMagic(210)
	--AddMagic(342,20)
	--AddMagic(716,2)
	--AddMagic(360,20)
	--AddItem(0,2,10,0,0,5,0,0)
	--NewWorld(163,194*8,200*16)
	--SetFightState(1);
	--SetFactionNo(0);
	--AddQuestKey(60)
	--SetTask(TASK_LINHTINH, 0);
	--local id = RestoreItem(0,4,49,0,0,5,0,1,0,-1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
	--AddItemID(id);
	--PutTremble(" / "," / ");
	--AddMagic(1073,50)
	--SetFactionNo(0)
	--for i=2056,2065 do
	--local id = ItemSetAdd(2,0,i-2,0,0,0,5);
	--SetItemRich(id,20000);
	--AddItemID(id);
	--end
	AddItem(0,5,0,0,0,5,0,0)
	
 
end;

function opentim()
	Input("timten")
end;
function timten(num, name)
	local nPlayer = FindPlayer(name);
	if(nPlayer <= 0) then
	Msg2Player("Kh�ng c� tr�n m�ng!")
	return end
	local tempid = PlayerIndex;
	PlayerIndex = nPlayer;
	local w,x,y = GetWorldPos();
	PlayerIndex = tempid;
	Msg2Player(name..".."..GetSubWorldName(w).."..<color=green>"..floor(x/256).."/"..floor(y/512).."<color>..<color=yellow>"..floor(x/32).."/"..floor(y/32));
end;
function noinput()
end;

function reload()
	--ReLoadFile("\\script\\playerlogin.lua");
	ReLoadFile("\\script\\global\\npcchucnang\\hieuthuoc.lua");
	--ReLoadFile("\\script\\header\\time.lua");
	--ReLoadFile("\\script\\feature\\tongkim\\tkmoquan.lua");
	--ReLoadFile("\\script\\feature\\tongkim\\nhuquantk.lua");
	--ReLoadFile("\\script\\startgame\\thon\\giangtanthon.lua");
	--ReLoadFile("\\script\\startgame\\thon\\longmontran.lua");
end;

function savedata()
	--ArrangeData()
	SaveDataFile();
end;

function tonggiam()
	local nIdx = GetTaskTemp(DESPLAYERID);
	PlayerIndex = nIdx;	--bat dau thao tac voi muc tieu
	if(NewWorld(197,1590,3206) == 1) then
	LeaveTeam();
	SetPKMode(0,0);--phuc hoi pk tu do
	SetFightState(0);--phi chien dau
	SetPunish(0);
	SetCurCamp(GetCamp());
	end
end;

function tangcap()
	local count = 1;
	local StrTab = {};
	
	for i=1,getn(LEVEL_ARRAY) do
		StrTab[count] = LEVEL_ARRAY[i][2].. "/lencap";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Tho�t/no";
	Say("L�n bao nhi�u c�p?",count,StrTab)
end;

function lencap(sel)
	local nSel = sel + 1;
	SetLevel(GetLevel() + LEVEL_ARRAY[nSel][1]);
end;

function nhanitem()
	Say("Nh�n �� :",4,
	"M�u mana/mana",
	"An Bang ��nh Qu�c/nhanab",
	"V�t ph�m kh�c/itemkhac",
	"Tho�t/no")
end;

function nhanab()
	for j=160,168 do AddItemGold(j,5) end
	AddItem(0,0,10,6,10,0,0,0)	--bontieu
end;

function mana()
	while (CheckRoom(1,1) == 1) do
	AddItem(0,duocpham,2,0,5,5,0,0)
	end
end

function itemkhac()
	Earn(500000)
	AddTool(10)
	--Item xanh---------------------------------
		--local kind,genre,detail,parti,level,series = 0,0,0,0,10,2;
		--local nIndex = ItemSetAdd(kind,genre,detail,parti,level,series,0);
		--local	type1 , value1_1, value1_3,
		--	type2 , value2_1, value2_3,
		--	type3 , value3_1, value3_3,
		--	type4 , value4_1, value4_3,
		--	type5 , value5_1, value5_3,
		--	type6 , value6_1, value6_3,
		--	type7 , value7_1, value7_3,
		--	type8 , value8_1, value8_3
		--=
		--	115 , 30, 0,
		--	123 , 60, 0,
		--	85 , 200, 0,
		--	110 , 40, 0,
		--	126 , 80, 0,
		--	102 , 25, 0,
		--	0 , 0, 0,
		--	0 , 0, 0;
		--ChangeItemMagic(nIndex,
		--				type1 , value1_1, value1_3,
		--				type2 , value2_1, value2_3,
		--				type3 , value3_1, value3_3,
		--				type4 , value4_1, value4_3,
		--				type5 , value5_1, value5_3,
		--				type6 , value6_1, value6_3,
		--				type7 , value7_1, value7_3,
		--				type8 , value8_1, value8_3
		--				);
		--AddItemID(nIndex);
	----------------------------------------------------------
	
end;

function toado()
	local w,x,y = GetWorldPos();
	Msg2Player("Map s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..x..", "..y)
	Msg2Player("Map s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..floor(x/32)..", "..floor(y/32))
end;

function tiemnang()
	AddProp(500)
	AddMagicPoint(200)
end;

function kynang()
	Say("L�y k� n�ng:",12,"Thi�u L�m/gmselskill","Thi�n v��ng/gmselskill","���ng m�n/gmselskill","Ng� ��c/gmselskill","Nga My/gmselskill","Th�y Y�n/gmselskill","C�i Bang/gmselskill","Thi�n Nh�n/gmselskill","V� �ang/gmselskill","C�n L�n/gmselskill","Tho�t/no")
end;

function gmselskill(sel)
	ClearSkill();--xoa skill cu~
	AddMagic(53,1) --cong kich vat ly
	AddMagic(1,1) --cong kich vat ly
	AddMagic(2,1) --cong kich vat ly
	--bat dau addskill phai'
	local nSel = sel + 1
	addskill_thuong(sel+1)
	for i =1,getn(SKILL90_ARRAY[nSel]) do
		if(SKILL90_ARRAY[nSel][i][3] > 0) then
		AddMagic(SKILL90_ARRAY[nSel][i][2],20);
		else
		AddMagic(SKILL90_ARRAY[nSel][i][2],0);
		end
	end
	AddMagic(SKILL120_ARRAY[nSel][2],20);
end;

function no()
end;