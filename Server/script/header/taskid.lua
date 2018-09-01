--Ken Nguyen
--04/03/2014
------TaskTemp------------------
ITEMINDEX	= 0
NPCINDEX	= 1
DESPLAYERID = 3	--for gm
SELSKILLNO = 4	--skill cua phai' so' x
HAVELOVE_MALE = 5		--Dang cau hon
HAVELOVE_FEMALE = 6		--playerindex cua nam
SEL_MOVEARRAY = 7			--lua chon mang~di chuyen
SEL_MOVEBEGIN = 8			--lua chon di chuyen
												--su dung	8->18
-------TASKID (loai lon)------------------
TASKVALUE_REPUTE = 0
TASKVALUE_BLESSING = 1
--task 2.3 timer-rest
--task 4.5.6 waypoint
TASKVALUE_ACCUMULATE = 7
TASKVALUE_HONOR = 8
TASK_EXPAND_RANK = 9
TASK_SHXT = 10
TASK_LINHTINH = 11	--[1]da hoan thanh datau truoc do(phan thuong)
										--[2]ben kia bo phong lang do
										--[3][4]lan dat cuoc
										--[5][6]lan danh khinh cong
										--[7]loai khinh cong
TASK_TIENTHAOLO = 12
TASK_DATAU_OLD = 13
TASK_DIADOCHI = 14	--[1][2][3]b¶n ®å --[4][5][6]sè l­îng t×m ®c [7][8][9]level cua update kinh nghiem
TASK_DATAU_NEED = 15
TASK_DATAU_ACCEPT = 16	--[1]NhËn nhiÖm vô [2]Lo¹i nhiÖm vô : 0: kh«ng giao, 1: cã giao vËt phÈm [3]®é khã 
													--[4][5][6]controng [7][8] loai update [9] loai item giao
TASK_DATAU_NUM = 17
TASK_LIENDAU_TIME = 18	--mua dau' thu' n
TASK_DAOTAYTUY = 19	--[1][2][3]mapcu[4]Taytuy[5][6]idrevive[7]loaitaytuy	[8]colaothai[9]tieungu
TASK_TAYTUYKINH = 20	--[1][2]TTK[3][4]VLMT	[5]ngolaogia-giangtan	[6]gianna-hotu	[7]tinvatmonphai
--------------------------------
TASK_NVST = 21	--[1][2]nhan nv [3][4][5][6][7][8]NVLongngu [9]thanh thi return
TASK_TANTHU = 22		--[1]nhan item [2]hocskill9x[3]nhantop[4]testgame[5][6][7][8][9][10][11][12]thuongcap
TASK_NVDANHVONG = 23	--[1]nv thit heo[2]mieng thit [3]nv hai thuoc [4]noiduathuden [5]noibatdau dua thu	[6]aphuong [7]thuongquanthu [8]anmaylongmon [9]phu-hotu
TASK_THOIGIAN = 24	--THOI GIAN heo rung
TASK_THOIGIAN2 = 25	--THOI GIAN hai thuoc+dichquan
TASK_LIENDAU = 26	--id data
TASK_RESET = 27	--[1]sudungHH[2]solanhaiHH [3]maxvuotai[4]longhuyethoan [5][6]luyenskill120moingay [7][8]max nvst[9]sudung qua HK
TASK_MOC_DATAU = 28	--nhan thuong moc da tau 9 o^
TASK_RESET2 = 29	--[1][2][3]datau max moi ngay[4]nhanthuongdatcuoc
TASK_THOIGIAN3 = 30	--THOI GIAN ho tro mau' tan thu
TASK_DATCUOCT = 31	--vong thi thu' n
TASK_DATCUOC1 = 32	--the dat cuoc
TASK_DATCUOC2 = 33	--the dat cuoc
TASK_DATCUOC3 = 34	--the dat cuoc
TASK_DATCUOC4 = 35	--the dat cuoc
TASK_DATCUOC5 = 36	--the dat cuoc
TASK_DATCUOC6 = 37	--the dat cuoc
TASK_THOIGIAN4 = 38	--THOI GIAN vong sang'

TASK_PLUSPOINT = 100	--diem them (mua do duoc) Sale(id,2)
TASK_ONLINEMIN = 150	--phut online
--cac task nho~ gia tri 0 den 255---
TASK_THIENSONBAOLO = 256
TASK_QUEHOATUU = 257
TASK_NAM = 258
TASK_THANG = 259
TASK_NGAY = 260
TASK_CHUYENSINH = 300	--so lan chuyen sinh

--cac du lieu data int--
DATA_DICEMONEY = 0
DATA_DUATOP = 11
DATA_DATCUOC = 12
DATA_DCHAVERES = 13
DATA_DCBEGIN = 21
DATA_DCEND = 30
