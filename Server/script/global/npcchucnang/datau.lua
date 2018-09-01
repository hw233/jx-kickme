Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\event_endtime.lua");
Include("\\script\\header\\openclose.lua");
AWARDS_ARRAY ={--m�c th��ng ��c bi�t
	500,
	1000,
	2000,
	3000,
	4000,
	5000,
	7000,
	9000,
	10000
};

LEVEL_UPDATE = {--lo�i nhi�m v� n�ng c�p v� m�c �� kh� cho t�ng level
[1]={
	--{4,	100,200,300,400,700,1000,2000,3000,4000,5000},
	{5,	100,200,300,400,500,600,700,800,900,1000},
	{6,	1,1,2,2,3,3,4,4,5,5},
	{7,	1,1,1,2,2,2,3,3,3,4}
	},
[2]={
	{1,	5,10,10,15,15,20,20,25,25,30},
	{2,	5,10,10,15,15,20,20,25,25,30},
	{4,	1000,2000,3000,4000,5000,6000,7000,8000,9000,10000},
	{5,	500,600,800,1000,1200,1500,1600,1800,1900,2000},
	{6,	2,3,4,4,5,6,7,7,8,8},
	{7,	1,1,1,2,2,2,3,3,3,4}
	},
[3]={
	{1,	5,10,10,15,15,20,20,25,25,30},
	{2,	5,10,10,15,15,20,20,25,25,30},
	{4,	5000,8000,10000,12000,15000,17000,20000,23000,25000,30000},
	{5,	1000,1500,1800,2500,2800,3000,3500,3700,3800,4000},
	{6,	4,5,5,6,7,7,7,8,9,10},
	{7,	1,1,1,2,2,2,3,3,3,4}
	},
[4]={
	{1,	5,10,10,15,15,20,20,25,25,30},
	{2,	5,10,10,15,15,20,20,25,25,30},
	{4,	7000,10000,15000,20000,25000,30000,35000,40000,45000,50000},
	{5,	1000,1500,1800,2500,2800,3000,3500,3700,3800,4000},
	{6,	4,5,5,6,7,7,7,8,9,10},
	{7,	1,1,1,2,2,2,3,3,3,4}
	},
[5]={
	{1,	5,10,15,15,18,18,20,25,30,40},
	{2,	5,10,15,15,18,18,20,25,30,40},
	{4,	40000,50000,60000,70000,90000,100000,120000,150000,170000,200000},
	{5,	2000,3000,3500,5000,5500,6000,7000,8000,9000,10000},
	{6,	5,6,7,8,9,10,11,12,14,15},
	{7,	1,1,1,2,2,2,3,3,3,4}
	},
[6]={
	{1,	5,10,15,15,18,18,20,25,30,40},
	{2,	5,10,15,15,18,18,20,25,30,40},
	{4,	50000,80000,100000,130000,150000,200000,250000,280000,300000,350000},
	{5,	2000,3000,3500,5000,5500,6000,7000,8000,9000,10000},
	{6,	5,6,7,8,9,10,11,12,14,15},
	{7,	2,2,2,3,3,3,4,4,4,5}
	},
[7]={
	{1,	5,10,15,15,18,18,20,25,30,40},
	{2,	5,10,15,15,18,18,20,25,30,40},
	{4,	100000,150000,200000,250000,300000,350000,400000,500000,800000,1000000},
	{5,	5000,8000,10000,15000,18000,20000,22000,25000,28000,40000},
	{6,	5,6,7,8,9,10,11,12,14,15},
	{7,	2,2,2,3,3,3,4,4,4,5}
	},
[8]={
	{1,	5,10,15,15,18,18,20,25,30,40},
	{2,	5,10,15,15,18,18,20,25,30,40},
	{4,	500000,600000,700000,800000,1000000,1200000,1500000,1700000,1800000,2000000},
	{5,	10000,15000,20000,30000,40000,42000,45000,50000,60000,70000},
	{6,	5,6,7,8,9,10,11,12,14,15},
	{7,	2,2,2,3,3,3,4,4,4,5}
	},
[9]={
	{1,	5,10,15,20,25,30,35,40,45,50},
	{2,	5,10,15,20,25,30,35,40,45,50},
	{3,	100,200,500,600,800,1000,1200,1500,1800,2000},
	{4,	500000,600000,700000,800000,1000000,1200000,1500000,1700000,1800000,2000000},
	{5,	10000,20000,30000,40000,50000,60000,70000,80000,90000,100000},
	{6,	5,6,7,8,9,10,11,12,14,15},
	{7,	2,2,2,3,3,3,4,4,4,5}
	--{8,	5,5,5,10,10,10,10,20,20,20}
	},
[10]={
	{1,	10,15,20,25,30,35,40,45,50,60},
	{2,	10,15,20,30,35,40,50,60,70,80},
	{3,	100,200,500,600,800,1000,1500,2000,3000,5000},
	{4,	500000,800000,1000000,1500000,1800000,2000000,2400000,2700000,3000000,5000000},
	{5,	10000,20000,30000,40000,50000,80000,100000,150000,180000,200000},
	{6,	5,6,7,8,9,10,12,14,15,18},
	{7,	2,2,3,3,4,4,5,5,6,6}
	--{8,	5,5,10,10,10,10,20,20,30,30}
	}
};

MAP_DIADOCHI={
[1]={53,20},
[2]={78,37},
[3]={3,70},
[4]={90,92},
[5]={41,122},
[6]={125,163},
[7]={9,56},
[8]={123,319,9,56},
[9]={123,319,224,320},
[10]={336,340,321,322,75,225,226,227,124,93,224,320}
};

--muc do kho cua nhiem vu item
ITEM_QUEST_LEVEL={
[1]={
		[1]={1,11,21,31,41},
		[2]={5,6,7,8}
},
[2]={
		[1]={2,12,22,32,42},
		[2]={5,6,7,8,14,15,16,17}
},
[3]={
		[1]={3,13,23,33,43},
		[2]={5,6,7,8,14,15,16,17}
},
[4]={
		[1]={4,14,24,34,44},
		[2]={5,6,7,8,14,15,16,17,18}
},
[5]={
		[1]={5,15,25,35,45},
		[2]={5,6,7,8,14,15,16,17,18}
},
[6]={
		[1]={6,16,26,36,46},
		[2]={5,6,7,8,14,15,16,17,18}
},
[7]={
		[1]={6,16,26,36,46,7,17,27,37,47},
		[2]={5,6,7,8,14,15,16,17,18}
},
[8]={
		[1]={6,16,26,36,46,7,17,27,37,47,8,18,28,38,48},
		[2]={5,6,7,8,14,15,16,17,18}
},
[9]={
		[1]={6,16,26,36,46,7,17,27,37,47,8,18,28,38,48,9,19,29,39,49},--trang bi ko thuoc tinh
		[2]={5,6,7,14,15,16,17,18},--item mat binh thuong
		[3]={1,2,3,4,9,10,11,12,13}--item dac biet
},
[10]={
		[1]={6,16,26,36,46,7,17,27,37,47,8,18,28,38,48,9,19,29,39,49,10,20,30,40,50},--trang bi ko thuoc tinh
		[2]={5,6,7,14,15,16,17,18},--item mat binh thuong
		[3]={1,2,3,4,9,10,11,12,13}--item dac biet
		--[4] item co thuoc tinh
}
};

--gen - detail - parti
KIND_ITEM_MAT = {--lo�i nhi�m v� giao v�t ph�m kh�c trang b� gen detail level seri
[1]={"Lam Th�y Tinh",3,13,0,0},	--Lam thuy tinh
[2]={"T� Th�y Tinh",3,14,0,0},	--Tu thuy tinh
[3]={"L�c Th�y Tinh",3,15,0,0},	--Luc thuy tinh
[4]={"Tinh H�ng B�o Th�ch",3,20,0,0},	--tinh hong bao thach
[5]={"Ph�c Duy�n L� (Ti�u)",2,0,0,0},	--phuc duyen
[6]={"Ph�c Duy�n L� (Trung)",2,1,0,0},	--phuc duyen
[7]={"Ph�c Duy�n L� (��i)",2,2,0,0},	--phuc duyen
[8]={"T�ng Kim Chi�u th� ",2,11,0,0},	--tong kim chieu thu
[9]={"Ti�n Th�o L� ",2,45,0,0},	--tien thao lo
[10]={"Thi�n s�n  B�o L� ",2,46,0,0},	--thien son bao lo
[11]={"B�ch Qu� L� ",2,47,0,0},	--bach qua lo
[12]={"Qu� Hoa T�u",2,48,0,0},	--que hoa tuu
[13]={"Phi Phong",2,7,0,0},	--phi phong
[14]={"L��ng Ng�n kho�ng",4,52,0,0},	--luong ngan
[15]={"X�ch ��ng kho�ng",4,53,0,0},	--xich dong
[16]={"T� Thi�t kho�ng",4,54,0,0},	--tu thiet
[17]={"Huy�n Tinh kho�ng th�ch",3,0,1,0},	--huyen tinh
[18]={"Huy�n Tinh kho�ng th�ch",3,0,2,0}	--huyen tinh
};

--gen - detail - parti - level
KIND_EQUIP_NOTMAGIC = {--lo�i nhi�m v� giao v�t ph�m trang b� ko thu�c t�nh
[1]={"Ho�ng Ng�c Gi�i Ch� "	,0,	3,	0,1 },
[2]={"Nh�n Qu� Tr�m"	,0,	3,	0,2 },
[3]={"Ph� Dung Th�ch Gi�i Ch� "	,0,	3,	0,3 },
[4]={"Ph� Th�y Gi�i Ch� "	,0,	3,	0,4 },
[5]={"Th�y L�u Th�ch Gi�i Ch� "	,0,	3,	0,5 },
[6]={"T� M�u L�c Gi�i Ch� "	,0,	3,	0,6 },
[7]={"H�i Lam B�o Th�ch Gi�i Ch� "	,0,	3,	0,7 },
[8]={"H�ng B�o Th�ch Gi�i Ch� "	,0,	3,	0,8 },
[9]={"Lam B�o Th�ch Gi�i Ch� "	,0,	3,	0,9 },
[10]={"To�n Th�ch Gi�i Ch� "	,0,	3,	0,10},
[11]={"Hu�n Y H��ng Nang"	,0,	9,	0,1 },
[12]={"M�t L� H��ng Nang"	,0,	9,	0,2 },
[13]={"Nh� H��ng H��ng Nang"	,0,	9,	0,3 },
[14]={"Lan Hoa H��ng Nang"	,0,	9,	0,4 },
[15]={"H�p Hoan H��ng Nang"	,0,	9,	0,5 },
[16]={"T� Ph��ng H��ng Nang"	,0,	9,	0,6 },
[17]={"Tr�m ��n H��ng Nang"	,0,	9,	0,7 },
[18]={"Ti�n X� H��ng Nang"	,0,	9,	0,8 },
[19]={"Gi� Nam H��ng Nang"	,0,	9,	0,9 },
[20]={"Long Ti�n H��ng Nang"	,0,	9,	0,10},
[21]={"L�c Du Ng�c B�i"	,0,	9,	1,1 },
[22]={"Kinh B�ch Ng�c B�i"	,0,	9,	1,2 },
[23]={"��o Hoa Ng�c B�i"	,0,	9,	1,3 },
[24]={"Mai Hoa Ng�c B�i"	,0,	9,	1,4 },
[25]={"Ng� S�c Ng�c B�i"	,0,	9,	1,5 },
[26]={"Thanh Ng�c Ng�c B�i"	,0,	9,	1,6 },
[27]={"B�ch Ng�c Ng�c B�i"	,0,	9,	1,7 },
[28]={"M�c Ng�c Ng�c B�i"	,0,	9,	1,8 },
[29]={"Ho�ng Ng�c Ng�c B�i"	,0,	9,	1,9 },
[30]={"D��ng Ch� B�ch Ng�c "	,0,	9,	1,10},
[31]={"D�y chuy�n ��ng"	,0,	4,	0,1 },
[32]={"Ng�n H�ng Li�m"	,0,	4,	0,2 },
[33]={"Kim H�ng Li�m"	,0,	4,	0,3 },
[34]={"B�ch Kim H�ng Li�m"	,0,	4,	0,4 },
[35]={"Ng�c Ch�u H�ng Li�m"	,0,	4,	0,5 },
[36]={"L�c T�ng Th�ch H�ng Li�m"	,0,	4,	0,6 },
[37]={"Th�y Tinh H�ng Li�m"	,0,	4,	0,7 },
[38]={"Kh�ng T��c Th�ch H�ng Li�m"	,0,	4,	0,8 },
[39]={"Tr�n Ch�u H�ng Li�m"	,0,	4,	0,9 },
[40]={"To�n Th�ch H�ng Li�m"	,0,	4,	0,10},
[41]={"L�c T�ng Th�ch H� Th�n Ph� "	,0,	4,	1,1 },
[42]={"San H� H� Th�n Ph� "	,0,	4,	1,2 },
[43]={"Mi�u Nh�n H� Th�n Ph� "	,0,	4,	1,3 },
[44]={"H� T�nh H� Th�n Ph� "	,0,	4,	1,4 },
[45]={"Th�y Tinh H� Th�n Ph� "	,0,	4,	1,5 },
[46]={"H� Ph�ch H� Th�n Ph� "	,0,	4,	1,6 },
[47]={"B�ch Ph� Th�y H� Th�n Ph� "	,0,	4,	1,7 },
[48]={"H�ng Ph� Th�y H� Th�n Ph� "	,0,	4,	1,8 },
[49]={"T� Ph� Th�y H� Th�n Ph� "	,0,	4,	1,9 },
[50]={"L�c Ph� Th�y H� Th�n Ph� "	,0,	4,	1,10}
};

--type - name - ch�n
KIND_EQUIP_HAVEMAGIC = {--lo�i nhi�m v� giao v�t ph�m c� ma thu�t
[1]={85,"T�ng sinh l�c",0},
[2]={89,"T�ng n�i l�c",0},
[3]={96,"Ph�c h�i th� l�c",2},
[4]={97,"T�ng s�c m�nh",3},
[5]={98,"T�ng th�n ph�p",3},
[6]={99,"T�ng sinh kh� ",3},
[7]={93,"T�ng th� l�c",0},
[8]={101,"Kh�ng ��c",4},
[9]={102,"Kh�ng h�a",4},
[10]={103,"Kh�ng l�i",4},
[11]={105,"Kh�ng b�ng",4},
[12]={106,"Gi�m th�i gian ��ng b�ng",1},
[13]={108,"Gi�m th�i gian tr�ng ��c",1},
[14]={110,"Gi�m th�i gian cho�ng",1}
};

GET_REWARDS ={
	{3,"ngaunhien"},
	{4,"daquy"},
	{5,"duocpham"}
};

EXP_REWARDS={--kinh nghiem th��ng
	{1000,2000},
	{3000,6000},
	{5000,8000},
	{8000,12000},
	{12000,15000},
	{20000,40000},
	{50000,70000},
	{90000,120000},
	{300000,500000},
	{500000,1000000}
};
QUESTKIND_UPDATE = {--c�c lo�i nhi�m v� n�ng c�p
	{	1	,"�i�m danh v�ng"},
	{	2	,"�i�m ph�c duy�n"},
	{	3	,"�i�m t�ch l�y"},
	{	4	,"�i�m kinh nghi�m"},
	{	5	,"ng�n l��ng"},
	{	6	,"��a �� ch� "},
	{	7	,"m�t ch� "}
	--{	8	,"�i�m vinh d� "}
};

NO_MONEY = "B�n tr� v�n ch�a mang �� ng�n l��ng cho ta."
FIND_ITEM = "T�m cho d� t�u 1 c�i %s."
FIND_MAGIC = "T�m cho d� t�u: %s %s %d-%d."
LETS_FIND = "H�y t�m cho ta 1 c�i %s"
MAX_QUEST_PERDAY = 30	--max nhiem v� m�i ng�y
--C�u tr�c c�a  TASK_DATAU_ACCEPT ---
	--[1]Nh�n nhi�m v�
	--[2]Lo�i nhi�m v� : 0: kh�ng giao, 1: c� giao v�t ph�m
	--[3]�� kh�
	--[4][5][6]S� nhi�m v� �� ho�n th�nh m�i ng�y
	--[7][8] loai update
	--tim item [7][8]num [9] loai giao item gi
--C�u tr�c c�a TASK_DIADOCHI ---
	--[1][2][3]b�n ��
	--[4][5][6]con trong'
	--[7][8][9]level cua update kinh nghiem
	--timitem co thuoc tinh
	--[1][2][3] nho nhat
	--[4][5][6] lon nhat
	--[7][8][9] loai ma thuat
function main()
	if(CLOSE_FEATURE == 1) then
	Talk(1,"",TALK_CLOSE)
	return end
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local bAccept = GetNumber(nTaskValue, 1);--[1]
	local nTaskKind = GetNumber(nTaskValue, 2);--[2]
	local nDone = GetNumber3(GetTask(TASK_RESET2), 1);--[1][2][3]
	if(nDone >= MAX_QUEST_PERDAY) then
	Talk(1,"",10192)
	return end
--Chua nhan nhiem vu gi--
	if (bAccept == 0) then
	Say2(format("<color=cyan>D� T�u<color> : V� hi�p kh�ch h�m nay �� ho�n th�nh <color=yellow>%d<color> nhi�m v�, c� th� th�c hi�n l�i <color=yellow>%d<color>, ng��i mu�n l�m n�a kh�ng?",nDone,MAX_QUEST_PERDAY-nDone),2,1,"",
			"Mau cho ta bi�t nhi�m v� ti�p theo l� g�?/nhannv",
			"�� ta ngh� ng�i m�t l�t ��, ta b�n r�i./no")
	return end
--Da nhan nhiem vu roi--
	local strMain,strPrivate;
	if(nTaskKind == 0) then	--loai update
	local nKind = GetNumber2(nTaskValue, 4); --� [7][8] lo�i update
	local strName = "<color=red>"..QUESTKIND_UPDATE[nKind][2].." <color>";
	if(nKind ==6 or nKind == 7) then
		strPrivate = format("H�y ��n %s t�m gi�p ta <color=yellow>%d<color> quy�n %s", GetSubWorldName(GetNumber3(GetTask(TASK_DIADOCHI),1)), GetTask(TASK_DATAU_NEED), strName)
	elseif(nKind == 5) then
		strPrivate = format("H�y mang �� cho ta %s <color=yellow>%d<color>",strName,GetTask(TASK_DATAU_NEED));
	else
		strPrivate = format("H�y �i n�ng c�p %s <color=yellow>%d<color>",strName,GetTask(TASK_DATAU_NEED));
	end
	
		strMain = format("��y l� nhi�m v� th� <color=green>%d<color>,�� li�n ti�p ho�n th�nh <color=green>%d<color> nhi�m v�. %s",nDone+1,GetTask(TASK_DATAU_NUM),strPrivate);
	else	--loai giao item
		local x = GetNumber(nTaskValue, 9); --loai item thu' may
		local nNum;
		if(x == 1) then
			nNum = GetNumber2(nTaskValue,4);
			strPrivate = format(LETS_FIND, KIND_EQUIP_NOTMAGIC[nNum][1]);
		elseif(x == 2 or x == 3) then
			nNum = GetNumber2(nTaskValue,4);
			strPrivate = format(LETS_FIND, KIND_ITEM_MAT[nNum][1]);
			if(KIND_ITEM_MAT[nNum][4] > 0) then
			strPrivate = strPrivate.."(c�p "..KIND_ITEM_MAT[nNum][4]..")";
			end
		else
			nNum = GetNumber3(GetTask(TASK_DIADOCHI),3)
			local nDetail = GetNumber2(nTaskValue,4);--nhan day chuyen ngoc boi
			local strDetail;
			if(nDetail == 0) then
				strDetail = "Nh�n"
			elseif(nDetail == 1) then
				strDetail = "D�y chuy�n"
			else
				strDetail = "Ng�c b�i"
			end
			strPrivate = format("H�y t�m cho ta m�n n�y:<color=yellow> %s<color> %s. Nh� nh�t:%d L�n nh�t:%d",strDetail, KIND_EQUIP_HAVEMAGIC[nNum][2],GetNumber3(GetTask(TASK_DIADOCHI),1),GetNumber3(GetTask(TASK_DIADOCHI),2));
		end
		strMain = format("��y l� nhi�m v� th� <color=green>%d<color>,�� li�n ti�p ho�n th�nh <color=green>%d<color> nhi�m v�. %s",nDone+1,GetTask(TASK_DATAU_NUM),strPrivate);
	end
		Say2(strMain,6,1,"",
			"Bi�t r�i �� ta ho�n th�nh nhi�m v� xong m�i t�m ng��i/no",
			"Ta �� ho�n th�nh nhi�m v� l�n n�y, h�y ki�m tra l�i/check",
			"L�p t�c ho�n th�nh nhi�m v� /shortway",
			"Nhi�m v� l�n n�y kh� qu� ta mu�n h�y b�./huybo",
			"Ta mu�n bi�t kh�o nghi�m c�a ng��i c� n�i dung ra sao/timhieu",
			"Ph�n th��ng t�ch l�y nhi�m v� /phanthuong"
			)
end;

function huybo()
	Say2(12242,3,1,"",
	"��ng, ta kh�ng mu�n l�m nhi�m v� qu� qu�i n�y ��u/xacnhanhuy1",
	"Ta mu�n s� d�ng 100 m�nh S�n H� x� t�c �� h�y b� nhi�m v� l�n n�y/shxt",
	"�� ta suy ngh� l�i ��./no"
	)
end

function xacnhanhuy1()
	Say2("Ng��i  suy ngh� k� ch�a, mu�n b� th�t sao?",2,1,"",
	"��ng l�i th�i n�a! Ta kh�ng mu�n l�m!/xacnhanhuy2",
	"Th�i �� ta suy ngh� l�i ��./no"
	)
end

function xacnhanhuy2()
	SetTask(TASK_DATAU_NUM, 0)
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	SetTask(TASK_DATAU_ACCEPT,SetNumber3(nTaskValue,1,0))
	SetTask(TASK_DATAU_ACCEPT,SetNumber3(GetTask(TASK_DATAU_ACCEPT),3,0))
	Msg2Player("<color=yellow>Chu�i nhi�m v� d� t�u �� x�a b� ho�n to�n. B�y gi� s� ph�i l�m l�i t� nhi�m v� ��u ti�n!<color>")
end

function shxt()
	local nSHXT = GetTask(TASK_SHXT)
	if(nSHXT < 100) then
		Talk(1,"",12244)
	return end
	nSHXT = nSHXT - 100;
	SetTask(TASK_SHXT, nSHXT);
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	SetTask(TASK_DATAU_ACCEPT,SetNumber3(nTaskValue,1,0));
	SetTask(TASK_DATAU_ACCEPT,SetNumber3(GetTask(TASK_DATAU_ACCEPT),3,0));
	Msg2Player("B�n �� d�ng 100 m�nh SHXT �� h�y nhi�m v�, hi�n t�i c�n "..nSHXT.." m�nh")
end

function shortway()
	local nHaveDoneAward = GetNumber(GetTask(TASK_LINHTINH),1);
	if(nHaveDoneAward > 0) then
		thuongnhucu(nHaveDoneAward);
	return end;
	Say2(10193,3,1,"",
	"S� d�ng 5 Tinh H�ng b�o th�ch/huythbt",
	"S� d�ng 500 v�n ng�n l��ng/huytien",
	" ��ng/no"
	)
end

function huythbt()
	if(GetItemCount(20,3) < 5) then
		Talk(1,"",13011)
	return end
	DelItem(20,3,5)
	thuong()
end

function huytien()
	if(GetCash() < 5000000) then
		Talk(1,"",NO_MONEY)
	return end
	Pay(5000000)
	thuong()
end

function timhieu()
Talk(4,"",10649,10650,10652,11239)
end

function phanthuong()
	local StrTab = {};
	local count = 1;
	for i=1,getn(AWARDS_ARRAY) do
		StrTab[count] = "Nh�n ph�n th��ng nhi�m v� "..AWARDS_ARRAY[i].." l�n".."/SelANum";
		count = count + 1;
	end
	if(count == 1) then
	return end
	StrTab[count] = " ��ng/no"
	local strMain = format("Khi t�ng s� nhi�m v� ho�n th�nh ��t ��n m�c ch� ��nh c� th� nh�n ph�n th��ng �u ��i. Hi�n t�i ho�n th�nh t�ch l�y l� <color=green>%d<color> nhi�m v�.",GetTask(TASK_DATAU_NUM));
	Say2(strMain, count,1,"",StrTab)
end

function SelANum(sel)
	local nSel = sel+1;
	local nValue = GetTask(TASK_MOC_DATAU);
	if(GetNumber(nValue,nSel) > 0) then
		Talk(1,"","Ph�n th��ng n�y ng��i �� nh�n r�i")
	return end
	if(GetTask(TASK_DATAU_NUM) < AWARDS_ARRAY[nSel]) then
		Talk(1,"","Ng��i v�n ch�a l�m �� "..AWARDS_ARRAY[nSel].." nhi�m v�, l�m �� r�i quay l�i sau");
	return end
	if(CheckRoom(2,3) == 0) then
	Talk(1,"",12265)
	return end
	SetTask(TASK_MOC_DATAU,SetNumber(nValue,nSel,1));
	if(nSel == 1) then
		AddItemGold(RANDOM(163,164),7)
	elseif(nSel == 2) then
		if(GetSex() == 0) then
		AddItemGold(190,5)
		else
		AddItemGold(194,5)
		end
	elseif(nSel == 3) then
		AddItemGold(162,7)
	elseif(nSel == 4) then
		AddItemGold(161,7)
	elseif(nSel == 5) then
		AddItemGold(167,3)
	elseif(nSel == 6) then
		AddItemGold(166,3)
	elseif(nSel == 7) then
		AddItemGold(168,3)
	elseif(nSel == 8) then
		AddItemGold(165,3)
	elseif(nSel == 9) then
		AddItem(0,0,10,6,10,0,0,0)
	end
end;

function nhannv()
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local nSetNum = SetNumber(nTaskValue, 1, 1)--set � [1]=1
	SetTask(TASK_DATAU_ACCEPT,  nSetNum)--set nhan nhiem vu
	local kindrand = RANDOM(1);
	nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 2,kindrand))--loai nv giao hay ko? --set � [2]
	nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local nLevel = floor(GetLevel()/10) + 1;
	if(nLevel > 10) then
		nLevel = 10;
	end
	if( kindrand == 0) then --loai ko giao
		local j = RANDOM(1,getn(LEVEL_UPDATE[nLevel]));
		local i = LEVEL_UPDATE[nLevel][j][1];
		SetTask(TASK_DATAU_ACCEPT,SetNumber2(nTaskValue, 4,i))--set � [7][8]--loai update
		nTaskValue = GetTask(TASK_DATAU_ACCEPT);
		local nNeedNum = RANDOM(1,10);--m�c �� kh�
		SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,nNeedNum-1))--set � [3] �� kh�
		if (i == 1) then	--danh v�ng
			nNeedNum = LEVEL_UPDATE[nLevel][j][1+nNeedNum]
			SetTask(TASK_DATAU_NEED,nNeedNum);--so luong can update
			SetTask(TASK_DATAU_OLD,GetRepute());--so luong c�
		elseif(i == 2) then --ph�c duy�n
			nNeedNum = LEVEL_UPDATE[nLevel][j][1+nNeedNum]
			SetTask(TASK_DATAU_NEED,nNeedNum);--so luong can update
			SetTask(TASK_DATAU_OLD,GetBless());--so luong c�
		elseif(i == 3) then --t�ch l�y
			nNeedNum = LEVEL_UPDATE[nLevel][j][1+nNeedNum]
			SetTask(TASK_DATAU_NEED,nNeedNum);--so luong can update
			SetTask(TASK_DATAU_OLD,GetAccum());--so luong c�
		elseif(i == 4) then --kinh nghiem
			nNeedNum = LEVEL_UPDATE[nLevel][j][1+nNeedNum];
			SetTask(TASK_DATAU_NEED,nNeedNum);--so luong can update
			local nCurExp = GetExp();--kn hien tai
			local nNext = GetExpNext();--so diem kn de len cap
			local nLv = GetLevel();
			if(nCurExp == nil) then
			nCurExp = 100
			end
			nCurExp = nNeedNum + nCurExp; --diem update + kn hien tai
			if(nCurExp >= nNext) then
				nLv = nLv + 1;
				nNext = nCurExp - nNext;
				SetTask(TASK_DIADOCHI, SetNumber3(GetTask(TASK_DIADOCHI),3,nLv))
				SetTask(TASK_DATAU_OLD, nNext)
			else
				SetTask(TASK_DIADOCHI, SetNumber3(GetTask(TASK_DIADOCHI),3,nLv))
				SetTask(TASK_DATAU_OLD, nCurExp)
			end
		elseif(i == 5) then --ng�n l��ng
			nNeedNum = LEVEL_UPDATE[nLevel][j][1+nNeedNum]
			SetTask(TASK_DATAU_NEED,nNeedNum);--so luong can n�p
		elseif(i == 6) then --dia do chi'
			nNeedNum = LEVEL_UPDATE[nLevel][j][1+nNeedNum];
			SetTask(TASK_DATAU_NEED,nNeedNum);--so luong can update
			local nMapNo = RANDOM(1,getn(MAP_DIADOCHI[nLevel]));
			SetTask(TASK_DIADOCHI, SetNumber3(0,1,MAP_DIADOCHI[nLevel][nMapNo]));
			SetTask(TASK_DATAU_OLD,0);--so luong c�
		elseif(i == 7) then --mat chi'
			nNeedNum = LEVEL_UPDATE[nLevel][j][1+nNeedNum];
			SetTask(TASK_DATAU_NEED,nNeedNum);--so luong can update
			local nMapNo = RANDOM(1,getn(MAP_DIADOCHI[nLevel]));
			SetTask(TASK_DIADOCHI, SetNumber3(0,1,MAP_DIADOCHI[nLevel][nMapNo]));
			SetTask(TASK_DATAU_OLD,0);--so luong c�
		elseif(i == 8) then --vinh d�
			nNeedNum = LEVEL_UPDATE[nLevel][j][1+nNeedNum]
			SetTask(TASK_DATAU_NEED,nNeedNum);--so luong can update
			SetTask(TASK_DATAU_OLD,GetHonor());--so luong c�
		end
		local str = format("D� t�u: n�ng c�p %d %s.", nNeedNum, QUESTKIND_UPDATE[i][2])
		AddNote(str);
		main();
	return end
	
	--loai co giao tra vat pham
	local x = 1;
	if(nLevel < 9) then
		x = random(2);
	else
		x = random(4);
		if(random(100) < 80) then
			if(x == 3) then
				x = 4;
			end
		end
	end
	SetTask(TASK_DATAU_NEED,0);
	SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 9,x))--set � [9] loai item
	nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local str;
	if(x == 1) then	--trang bi ko thuoc tinh
		SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,4))--set � [3] �� kh�
		nTaskValue = GetTask(TASK_DATAU_ACCEPT);
		local nItemNum = RANDOM(1,getn(ITEM_QUEST_LEVEL[nLevel][x]));
		SetTask(TASK_DATAU_ACCEPT, SetNumber2(nTaskValue,4,ITEM_QUEST_LEVEL[nLevel][x][nItemNum]));	--so thu tu array
		str = format(FIND_ITEM, KIND_EQUIP_NOTMAGIC[ITEM_QUEST_LEVEL[nLevel][x][nItemNum]][1]);
	elseif(x == 2) then	--item mat binh thuong
		SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,5))--set � [3] �� kh�
		nTaskValue = GetTask(TASK_DATAU_ACCEPT);
		local nItemNum = RANDOM(1,getn(ITEM_QUEST_LEVEL[nLevel][x]));
		SetTask(TASK_DATAU_ACCEPT, SetNumber2(nTaskValue,4,ITEM_QUEST_LEVEL[nLevel][x][nItemNum]));	--so thu tu array
		str = format(FIND_ITEM, KIND_ITEM_MAT[ITEM_QUEST_LEVEL[nLevel][x][nItemNum]][1]);
		if(KIND_ITEM_MAT[ITEM_QUEST_LEVEL[nLevel][x][nItemNum]][4] > 0) then
		str = str.."(c�p "..KIND_ITEM_MAT[ITEM_QUEST_LEVEL[nLevel][x][nItemNum]][4]..")";
		end
	elseif(x == 3) then	--item mat dac biet
		SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,9))--set � [3] �� kh�
		nTaskValue = GetTask(TASK_DATAU_ACCEPT);
		local nItemNum = RANDOM(1,getn(ITEM_QUEST_LEVEL[nLevel][x]));
		SetTask(TASK_DATAU_ACCEPT, SetNumber2(nTaskValue,4,ITEM_QUEST_LEVEL[nLevel][x][nItemNum]));	--so thu tu array
		str = format(FIND_ITEM, KIND_ITEM_MAT[ITEM_QUEST_LEVEL[nLevel][x][nItemNum]][1]);
		if(KIND_ITEM_MAT[ITEM_QUEST_LEVEL[nLevel][x][nItemNum]][4] > 0) then
		str = str.."(c�p "..KIND_ITEM_MAT[ITEM_QUEST_LEVEL[nLevel][x][nItemNum]][4]..")";
		end
	else	--loai item co thuoc tinh
		local ItemKind = RANDOM(2);
		local nMagic = RANDOM(1,getn(KIND_EQUIP_HAVEMAGIC));
		if(nMagic == 3 and ItemKind == 2) then
			ItemKind = 0;
		end
		SetTask(TASK_DATAU_ACCEPT, SetNumber2(nTaskValue,4,ItemKind));
		local nChoose = RANDOM(1);
		local nMin,nMax = 0,0;
		nTaskValue = GetTask(TASK_DATAU_ACCEPT);
		if(KIND_EQUIP_HAVEMAGIC[nMagic][3] == 0) then --max 200
			if(nChoose == 0) then	--level thap
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,6))
				nMin = 80;
				nMax = 100;
			else
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,7))
				nMin = 100;
				nMax = 120;
			end
		elseif(KIND_EQUIP_HAVEMAGIC[nMagic][3] == 1) then --max 40
			if(nChoose == 0) then	--level thap
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,3))
				nMin = 10;
				nMax = 20;
			else
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,6))
				nMin = 30;
				nMax = 40;
			end
		elseif(KIND_EQUIP_HAVEMAGIC[nMagic][3] == 2) then --max 10
			if(nChoose == 0) then	--level thap
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,3))
				nMin = 1;
				nMax = 4;
			else
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,5))
				nMin = 5;
				nMax = 8;
			end
		elseif(KIND_EQUIP_HAVEMAGIC[nMagic][3] == 3) then --max 20
			if(nChoose == 0) then	--level thap
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,5))
				nMin = 5;
				nMax = 8;
			else
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,8))
				nMin = 12;
				nMax = 18;
			end
		else	--max 25
			if(nChoose == 0) then	--level thap
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,6))
				nMin = 7;
				nMax = 10;
			else
				SetTask(TASK_DATAU_ACCEPT,SetNumber(nTaskValue, 3,8))
				nMin = 10;
				nMax = 15;
			end
		end
		if(ItemKind == 0) then
		str=format(FIND_MAGIC,"Nh�n. ",KIND_EQUIP_HAVEMAGIC[nMagic][2],nMin,nMax);
		elseif (ItemKind == 1) then
		str=format(FIND_MAGIC,"D�y chuy�n. ",KIND_EQUIP_HAVEMAGIC[nMagic][2],nMin,nMax);
		else
		str=format(FIND_MAGIC,"Ng�c b�i. ",KIND_EQUIP_HAVEMAGIC[nMagic][2],nMin,nMax);
		end
		nTaskValue = SetNumber3(0,1,nMin);
		nTaskValue = SetNumber3(nTaskValue,2,nMax);
		nTaskValue = SetNumber3(nTaskValue,3,nMagic);
		SetTask(TASK_DIADOCHI, nTaskValue);
	end
	AddNote(str);
	main();
end

function check()
	local nHaveDoneAward = GetNumber(GetTask(TASK_LINHTINH),1);
	if(nHaveDoneAward > 0) then
		thuongnhucu(nHaveDoneAward);
	return end;
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local nKind = GetNumber(nTaskValue, 2);--loai giao item hay ko
	local nOld = GetTask(TASK_DATAU_OLD);
	local nNeed = GetTask(TASK_DATAU_NEED);
	if(nKind == 0) then
		local i = GetNumber2(nTaskValue, 4); --� [7][8] lo�i update
		if (i == 1) then	--danh v�ng
			nNeed = nNeed + nOld;
			if(GetRepute() < nNeed ) then
				Talk(1,"",12239)
			return end
			thuong()
			return
		elseif(i == 2) then --ph�c duy�n
			nNeed = nNeed + nOld;
			if(GetBless() < nNeed ) then
				Talk(1,"",12239)
			return end
			thuong()
			return
		elseif(i == 3) then --t�ch l�y
			nNeed = nNeed + nOld;
			if(GetAccum() < nNeed ) then
				Talk(1,"",12239)
			return end
			thuong()
			return
		elseif(i == 4) then --kinh nghiem
			local nNeedLv = GetNumber3(GetTask(TASK_DIADOCHI),3)
			local nCurLv = GetLevel()
			local nCurExp = GetExp()
			if(nCurLv < nNeedLv) then
				Talk(1,"",12239)
			return end
			if(nNeedLv == nCurLv and nOld > nCurExp) then
				Talk(1,"",12239)
			return end
			thuong()
		elseif(i == 5) then --ng�n l��ng
			if(GetCash() < nNeed ) then
				Talk(1,"",NO_MONEY)
			return end
			Pay(nNeed)
			thuong()
			return
		elseif(i == 6) then --dia do chi'
			local nGotNum = GetNumber3(GetTask(TASK_DIADOCHI),2);
			if(nGotNum < nNeed) then
				Talk(1,"",12239)
			return end
			SetTask(TASK_DIADOCHI,0)
			thuong()
		elseif(i == 7) then --mat chi'
			local nGotNum = GetNumber3(GetTask(TASK_DIADOCHI),2);
			if(nGotNum < nNeed) then
				Talk(1,"",12239)
			return end
			SetTask(TASK_DIADOCHI,0)
			thuong()
		elseif(i == 8) then --vinh d�
			nNeed = nNeed + nOld;
			if(GetHonor() < nNeed ) then
				Talk(1,"",12239)
			return end
			thuong()
			return
		end
	return end
	--loai giao item, mo khung giao item
	PutItem("V� hi�p kh�ch �� c� v�t ph�m ta c�n r�i ch�?","y/giao","n/no")
end;

function giao()
	local nTempIndex,Tkind,Tgenre,Tdetail,Tparti,Tlevel,Tseries,Trow;
	local count = 0;
	local nIndex = 0;
	local kind,genre,detail,parti,level,series,row;
	local i,j;
	for i=0,5 do
		for j=0,3 do
			nTempIndex,Tkind,Tgenre,Tdetail,Tparti,Tlevel,Tseries,Trow = GetItemParam(10,i,j);
			if (nTempIndex > 0) then
				count = count + 1;
				nIndex,kind,genre,detail,parti,level,series,row = nTempIndex,Tkind,Tgenre,Tdetail,Tparti,Tlevel,Tseries,Trow;
			end
		end
	end
	if(count == 0) then
		Talk(1,"","Ng��i kh�ng �em g� cho ta c� �? Ta kh�ng hoa m�t ch�?")
	return end
	if(count > 1) then
		Talk(1,"","Nhi�u th� qu� l�o xem kh�ng ���c! Ng��i ��t v�o t�ng m�n th�i!")
	return end
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local x = GetNumber(nTaskValue, 9); --loai item thu' may
	local  nNum = GetNumber2(nTaskValue,4);--so thu tu
	if(x == 1) then
		if(		genre == KIND_EQUIP_NOTMAGIC[nNum][2]	--genre
		and	detail == KIND_EQUIP_NOTMAGIC[nNum][3]	--detail
		and	parti == KIND_EQUIP_NOTMAGIC[nNum][4]	--parti
		and	level == KIND_EQUIP_NOTMAGIC[nNum][5]) then	--level
			RemoveItem(nIndex, 1);
			thuong()
		else
			Talk(1,"",12239)
		end
	elseif(x == 2 or x == 3) then
		if(		genre == KIND_ITEM_MAT[nNum][2]	--genre
		and	detail == KIND_ITEM_MAT[nNum][3]	--detail
		and	level  == KIND_ITEM_MAT[nNum][4]) then	--level
			RemoveItem(nIndex, 1);
			thuong()
		else
			Talk(1,"",12239)
		end
	else		--item co thuoc tinh
		local nTask = GetTask(TASK_DIADOCHI);
		local nMin = GetNumber3(nTask,1);
		local nMax = GetNumber3(nTask,2);
		local nMagic = GetNumber3(nTask,3);
		local nDetail;
		if(nNum == 0) then
			nDetail = 3;
		elseif(nNum == 1) then
			nDetail = 4;
		else
			nDetail = 9;
		end
		local MA = {};
		local VA = {};
		local value1_3,
		         value2_3,
		         value3_3,
		         value4_3,
		         value5_3,
		         value6_3,
		         value7_3,
		         value8_3;
		MA[1] , VA[1], value1_3,
		MA[2] , VA[2], value2_3,
		MA[3] , VA[3], value3_3,
		MA[4] , VA[4], value4_3,
		MA[5] , VA[5], value5_3,
		MA[6] , VA[6], value6_3,
		MA[7] , VA[7], value7_3,
		MA[8] , VA[8], value8_3
		= GetItemMagic(nIndex);
		local bTrue = 0;
		for i=1,6 do
			if(MA[i] == KIND_EQUIP_HAVEMAGIC[nMagic][1]) then
				if(VA[i] >= nMin and VA[i] <= nMax) then
					bTrue = 1;
				end
			end
		end
		if(bTrue == 1) then
			RemoveItem(nIndex, 1);
			thuong()
		else
			Talk(1,"",12239)
		end
	end
end;

function thuong()
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local nDiff = (GetNumber(nTaskValue, 3) + 1)*10;--muc do kho'
	local nAwardKind = 1;--ngaunhien
	if(RANDOM(300) < nDiff and random(1,2) == 1 and GetLevel() > 70) then
		nAwardKind = 2;--da
	else
		if(RANDOM(3) == 2) then
			nAwardKind = 3;--duoc
		end
	end
	SetTask(TASK_LINHTINH, SetNumber(0,1,nAwardKind));--set o[1] da nhan thuong~, du mat ket noi
	local strRand = format("%d/%s",GET_REWARDS[nAwardKind][1],GET_REWARDS[nAwardKind][2]);
	GetReward("Ng��i l�m t�t l�m! H�y nh�n l�y ph�n th��ng c�a ng��i!",
	"2/kinhnghiem","1/tien",strRand)
	
end;

function thuongnhucu(nAwardKind)
	local strRand = format("%d/%s",GET_REWARDS[nAwardKind][1],GET_REWARDS[nAwardKind][2]);
	GetReward("Ng��i l�m t�t l�m! H�y nh�n l�y ph�n th��ng c�a ng��i!",
	"2/kinhnghiem","1/tien",strRand)
end;

function kinhnghiem()
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local nDiff = GetNumber(nTaskValue, 3) + 1;--muc do kho'
	local nLevel = floor(GetLevel()/10) + 1;
	if(nLevel > 10) then
		nLevel = 10;
	end
	local nCurExp = GetExp();
	if(nCurExp ~= nil) then
		local nNextExp = GetExpNext();
		if(nNextExp > 0) then
			local nGap = nNextExp - nCurExp;
			local nAddExp = RANDOM(EXP_REWARDS[nLevel][1]*nDiff,EXP_REWARDS[nLevel][2]*nDiff);
			if(nAddExp > 0) then
			ClearTask()
			addevent(2)
			end
			while (nAddExp > 0) do
				AddOwnExp(nAddExp);
				nAddExp = nAddExp - nGap;
				nNextExp = GetExpNext();
				nCurExp = GetExp();
				nGap = nNextExp - nCurExp;
			end
		end
	end
end

function tien()
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local nDiff = GetNumber(nTaskValue, 3) + 1;--muc do kho'
	local nLevel = floor(GetLevel()/10) + 1;
	if(nLevel > 10) then
		nLevel = 10;
	end
	local nTotalMoney = RANDOM(nLevel*(2000+nDiff),nLevel*(2000+nDiff)*nDiff*2);
	Earn(nTotalMoney);
	if(nTotalMoney > 0) then
	ClearTask()
	addevent(2)
	end
end

function ngaunhien()
	local nRand = RANDOM(1000);
	if(nRand == 999) then
		daquy()
	elseif(nRand < 500) then
		if(random(1,2) == 1) then
			kinhnghiem()
		else
			tien()
		end
	elseif(nRand < 880) then
		AddTool(RANDOM(56,58))--xa loi, tam tam, hoa hong
		ClearTask()
		addevent(2)
	elseif(nRand < 900) then
		AddTool(RANDOM(54,55))--thiet la han, ban nhuoc
		ClearTask()
		addevent(2)
	else
		duocpham()
	end
end

function daquy()
	local nRand = random(3)
	if(nRand == 1) then
	AddMat(RANDOM(13,15))--thuy tinh
	elseif(nRand == 2) then
	AddMat(20)--tinh hong
	else
	AddMat(0,1,random(5,7))--huyentinh5-7
	end
	ClearTask()
	addevent(2)
end

function duocpham()
	local nSel = RANDOM(100);
	if(nSel == 99) then
	AddTool(RANDOM(45,48))--cac loai lo
	elseif(nSel == 89) then
	AddTool(3)	--bch90
	elseif(nSel < 30) then
	AddItem(ITEM_NORMAL, 1,RANDOM(5,6),0,RANDOM(1,5),5,0,0);--thuoc
	else
	AddTool(RANDOM(2))--phuc duyen
	end
	ClearTask()
	addevent(2)
end

function ClearTask()
	local nTaskDone = GetTask(TASK_RESET2);
	local nDone = GetNumber3(nTaskDone, 1);--so nv hoan thanh moi ngay
	SetTask(TASK_RESET2,SetNumber3(nTaskDone,1,nDone+1));
	
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	nTaskValue = SetNumber3(nTaskValue,1,0);
	SetTask(TASK_DATAU_ACCEPT,SetNumber3(nTaskValue,3,0));
	
	SetTask(TASK_DATAU_NUM,GetTask(TASK_DATAU_NUM)+1);
	SetTask(TASK_LINHTINH, SetNumber(GetTask(TASK_LINHTINH),1,0));
	if(nDone == 29) then
		if(CheckRoom(2,4) == 1 or CheckRoom(4,2) == 1 or CheckRoom(3,3) == 1) then
			for i=1,4 do
			local TTL = ItemSetAdd(0,2,45,0,0,5,0)
			LockItem(TTL)
			AddItemID(TTL)
			TTL = ItemSetAdd(0,5,29,0,0,5,0)
			LockItem(TTL)
			AddItemID(TTL)
			end
			Msg2Player("<color=green>B�n nh�n ���c ph�n th��ng D� T�u.")
		end
	end
end

function no()
end