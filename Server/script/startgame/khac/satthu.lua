--add boss sat thu cac loai

function addnpcsatthu()

    --=============samacdiabieu================	--592
	--nNpcIndex = AddNpcNew(812,100,224,(207*8)*32,(179*16)*32,DEATHFILEST, --gia cat kinh hong
	--     5,"Gia C�t Kinh H�ng",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)
	--SetNpcValue(nNpcIndex, 1); --con 1
	--
	--nNpcIndex = AddNpcNew(811,100,224,(236*8)*32,(185*16)*32,DEATHFILEST, --co thu dang
	--     5,"C� Th� ��ng",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)
	--SetNpcValue(nNpcIndex, 2);	--con 2 
    ----=============laohodong================	
	--nNpcIndex = AddNpcNew(809,100,123,(212*8)*32,(203*16)*32,DEATHFILEST, --tang chi oan
	--     5,"T�ng Chi O�n",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)
    --SetNpcValue(nNpcIndex, 3); --con 3
	--
	--nNpcIndex = AddNpcNew(810,100,123,(200*8)*32,(200*16)*32,DEATHFILEST, --ve bien thanh
	--     5,"V� Bi�n Th�nh",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)
    --SetNpcValue(nNpcIndex, 4);
    ----=============hoanghanguyendau================	
	--nNpcIndex = AddNpcNew(813,100,122,(214*8)*32,(207*16)*32,DEATHFILEST, --trang minh trung
	--     5,"Trang Minh Trung",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)		 
    --SetNpcValue(nNpcIndex, 5);
	--
    --nNpcIndex = AddNpcNew(818,100,122,(188*8)*32,(197*16)*32,DEATHFILEST, --co vo thuong
	--     5,"C� V� Th��ng",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)
    --SetNpcValue(nNpcIndex, 6);
	----==============LuuTienDong=========================
	-- nNpcIndex = AddNpcNew(815,100,125,(212*8)*32,(192*16)*32,DEATHFILEST, --vu nhat the
	--     5,"V� Nh�t Th� ",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)
	--SetNpcValue(nNpcIndex, 7);
    ----=============duocvuongcoc================	
	--nNpcIndex = AddNpcNew(816,100,140,(307*8)*32,(229*16)*32,DEATHFILEST, --diep uc anh
	--     5,"Di�p �c Anh",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)
    --SetNpcValue(nNpcIndex, 8);
	--nNpcIndex = AddNpcNew(817,100,140,(291*8)*32,(224*16)*32,DEATHFILEST, --lac nhi kim
	--     5,"L�c Nh� Kim",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)
    --SetNpcValue(nNpcIndex, 9);  
    ----=============vudison================	
	--nNpcIndex = AddNpcNew(814,100,193,(212*8)*32,(161*16)*32,DEATHFILEST, --lieu tu gia
	--     5,"Li�u T� Gia",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	--SetNpcValue(nNpcIndex, 10);	
	local nNpcIndex;
	--==============Truong Bach Nam=================
	nNpcIndex = AddNpcNew(816,100,321,35663,82248,DEATHFILEST,
	     5,"V�n H� Tinh",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 1);
	
	nNpcIndex = AddNpcNew(815,100,321,41339,83846,DEATHFILEST,
	     5,"B�o Tri�t S�n",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 2);
	
	nNpcIndex = AddNpcNew(813,100,321,39942,96050,DEATHFILEST,
	     5,"Phan Ng�t Nh�n",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 3);

	nNpcIndex = AddNpcNew(814,100,321,47900,87972,DEATHFILEST,
	     5,"Li�n H�nh Th�i",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 4);
	--==============Sa Mac=================
	nNpcIndex = AddNpcNew(815,100,225,50882,106326,DEATHFILEST,
	     5,"Cam Ch�nh C� ",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 5);
	
	nNpcIndex = AddNpcNew(817,100,225,46399,108248,DEATHFILEST,
	     5,"D��ng Phong D�t",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 6);
	
	nNpcIndex = AddNpcNew(816,100,225,40315,103642,DEATHFILEST,
	     5,"V� Nh�t Th� ",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 7);
	
	nNpcIndex = AddNpcNew(818,100,225,45648,99316,DEATHFILEST,
	     5,"H� Sinh Vong",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 8);
	--==============Tien cuc dong=================
	nNpcIndex = AddNpcNew(768,100,93,52736,105030,DEATHFILEST,
	     5,"Gi� Gi�i Nh�n",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 9);
	
	nNpcIndex = AddNpcNew(812,100,93,52604,97844,DEATHFILEST,
	     5,"Tr�nh C�u Nh�t",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 10);
	
	nNpcIndex = AddNpcNew(813,100,93,55614,102490,DEATHFILEST,
	     5,"Chu S� B� ",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 11);
	
	nNpcIndex = AddNpcNew(814,100,93,51288,100816,DEATHFILEST,
	     5,"Trang Minh Trung",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 12);
	--==============Khoa lang dong=================
	nNpcIndex = AddNpcNew(819,100,75,54544,101848,DEATHFILEST,
	     5,"T�ng Ch� O�n",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 13);
	
	nNpcIndex = AddNpcNew(820,100,75,56202,100182,DEATHFILEST,
	     5,"V� Bi�n Th�nh",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 14);
	
	nNpcIndex = AddNpcNew(768,100,75,58241,102484,DEATHFILEST,
	     5,"C� Th� ��ng",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 15);
	
	nNpcIndex = AddNpcNew(812,100,75,52202,101334,DEATHFILEST,
	     5,"Gia C�t Kinh H�ng",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 16);
	--==============Mac Cao Quat=================
	nNpcIndex = AddNpcNew(817,100,340,39137,87692,DEATHFILEST,
	     5,"Tr� Thi�n M�n",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 17);
	
	nNpcIndex = AddNpcNew(820,100,340,55493,88554,DEATHFILEST,
	     5,"�o�n L�ng Nguy�t",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 18);
	
	nNpcIndex = AddNpcNew(818,100,340,61636,88584,DEATHFILEST,
	     5,"Nh�m Th��ng Khung",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 19);
	
	nNpcIndex = AddNpcNew(819,100,340,40792,87600,DEATHFILEST,
	     5,"T� D�t Minh",1,"555",0,500000,100,8000,nil,10,20,nil,2000,50,2,DROPFILEST)	
	SetNpcValue(nNpcIndex, 20);
end
