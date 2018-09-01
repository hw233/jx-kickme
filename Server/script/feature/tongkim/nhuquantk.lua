--Quan nhu quan tong kim
--Author: Ken Nguyen 2013
--DMEM TEAM

Include("\\script\\library\\worldlibrary.lua");

TICHLUY = {
500,
1000,
2000,
5000
}
STRTABLE={
"Ta mu�n mua ��o c� T�ng Kim/muadaocu",
"Ta mu�n ��i �i�m t�ch l�y T�ng Kim l�y �i�m kinh nghi�m/kn",
"D�ng Nh�c V��ng h�n th�ch ��i l�y Nh�c V��ng ki�m/nvk",
"Xem �i�m t�ch l�y/tichluy",
"�� ta suy ngh� l�i/out"
}

function main(NpcIndex)
	local bTong = GetNpcValue(NpcIndex)
	if(bTong == nil) then
	return end
	local nSubWorldId = SubWorldID2Idx(380)
	if nSubWorldId < 0 then
	return end
	SubWorld = nSubWorldId;
	local nPlayerDataIdx, nGoup;
	if(bTong > 0) then	--ben Tong
	nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
		if(nPlayerDataIdx > 0) then	--neu da gia nhap roi
		nGroup = GetMSIdxGroup(1, nPlayerDataIdx)
		if(nGroup == 1) then	--nhom 1 da gia nhap phe Kim roi
			Talk(1,"",10659)
		return end
		end
	Say(12103,5,
	STRTABLE
	)
	--ben kim
	else
	nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
		if(nPlayerDataIdx > 0) then	--neu da gia nhap roi
		nGroup = GetMSIdxGroup(1, nPlayerDataIdx)
		if(nGroup == 0) then	--nhom 0 da gia nhap phe Tong roi
			Talk(1,"",10634)
		return end
		end
	Say(11317,5,
	STRTABLE
	)
	end
end;

function muadaocu()
	Sale(95,3)
end;

function kn()
	local strTab = {};
	local count = 0;
	for i=1,getn(TICHLUY) do
		strTab[i] = TICHLUY[i].." �i�m t�ch l�y/seltichluy";
		count = count + 1;
	end
		strTab[count+1] = "T�t c� �i�m t�ch l�y/seltichluy";
		strTab[count+2] = "Hi�n t�i kh�ng mu�n ��i/seltichluy";
	
	Say(12264,count+2,
	strTab)
end;

function seltichluy(sel)
	local nSel = sel+1;
	
	if(nSel == getn(TICHLUY)+2) then
	return end
	
	local nAccum = GetAccum();
	
	if(nSel == getn(TICHLUY)+1) then
		if nAccum <= 0 then
			Talk(1,"",12237)
		return end
		AddAccum(-nAccum)
		AddOwnExp(nAccum*100)
	return end
	
	if(TICHLUY[nSel] > nAccum) then
		Talk(1,"","�i�m t�ch l�y hi�n t�i c�a ng��i kh�ng ��.")
	else
		AddAccum(-TICHLUY[nSel])
		AddOwnExp(TICHLUY[nSel]*100)
	end
	
end;

function nvk()
	Say2("Ng��i th�c s� mu�n ��i l�y Nh�c V��ng ki�m?",2,1,"",
	"D�ng 100 Nh�c V��ng h�n th�ch �� ��i/doinvk",
	STRTABLE[5])
end;

function doinvk()
	if (GetItemCount(2) < 100) then
		Talk(1,"","Ng��i kh�ng c� �� 100 Nh�c V��ng h�n th�ch")
	return end
	if(CheckRoom(2,3) == 0) then
		Talk(1,"","Ng��i h�y �� h�nh trang �� ch� tr�ng ��!")
	return end
	AddQuestKey(1)
	DelItem(2,vatphamnv,100)
end;

function tichluy()
	local str = "Ng��i hi�n c�  <color=yellow>%d<color> �i�m t�ch l�y."
	Talk(1,"",format(str,GetAccum()))
end;

function out()
end;
