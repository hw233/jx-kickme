
--Include("\\script\\library\\worldlibrary.lua");
--Include("\\script\\startgame\\khoitaoserver.lua");
RATE3 = 30
BONUS = "V¸n nµy b¹n may m¾n th¾ng ®Ëm<color=yellow> %d<color> l­îng"
function main(nKind, nMoney)
	--Message("Lua - gia tri" ..nMoney.."ok" ..nKind.. "ok");
	if (nMoney < 10 or nMoney > 200) then return end
	local nRealMoney = nMoney*10000;
	if(GetCash() < nRealMoney) then return end;
	local nGambMoney = GetDataInt(0);
	if(nGambMoney < 50000000) then
	FinishDice(2,1,1,1)	--thong bao het tien
	return end
	local Dice1,Dice2,Dice3,Point = 0,0,0,0;
	--Message("Lua - Dice1 "..Dice1.." Dice2 "..Dice2.." Dice3"..Dice3);
	if (nKind == 1) then	--Siu~
		Dice1 = random(1,6);
		Dice2 = random(1,6);
		Dice3 = random(1,6);
		if (Dice1 + Dice2 + Dice3 <= 10) then
			if (RANDOM(99) < (floor(nMoney/10) + 30)) then
				Point = 10;
				while (Point <= 10) do
				Dice1 = random(1,6);
				Dice2 = random(1,6);
				Dice3 = random(1,6);
				Point = Dice1 + Dice2 + Dice3;
				end
			end
		end
		if (Dice1 + Dice2 + Dice3 <= 10) then
				if(RANDOM(50) == 49) then
					local nPlusMoney = (RANDOM(nMoney*2) + nMoney)*10000;
					nRealMoney = nRealMoney + nPlusMoney;
					Msg2Player(format(BONUS, nPlusMoney));
			end
			SetDataInt(0,nGambMoney-nRealMoney)
			FinishDice(1,Dice1,Dice2,Dice3)
			Earn(nRealMoney)
		else
			SetDataInt(0,nGambMoney+nRealMoney)
			FinishDice(0,Dice1,Dice2,Dice3)
			Pay(nRealMoney)
		end
	return end
	if (nKind == 2) then	--Tai`
		Dice1 = random(1,6);
		Dice2 = random(1,6);
		Dice3 = random(1,6);
		if (Dice1 + Dice2 + Dice3 > 10) then
			if (RANDOM(99) < (floor(nMoney/10) + 30)) then
				Point = 11;
				while (Point > 10) do
				Dice1 = random(1,6);
				Dice2 = random(1,6);
				Dice3 = random(1,6);
				Point = Dice1 + Dice2 + Dice3;
				end
			end
		end
		if (Dice1 + Dice2 + Dice3 > 10) then
			if(RANDOM(50) == 49) then
					local nPlusMoney = (RANDOM(nMoney*2) + nMoney)*10000;
					nRealMoney = nRealMoney + nPlusMoney;
					Msg2Player(format(BONUS, nPlusMoney));
			end
			SetDataInt(0,nGambMoney-nRealMoney)
			FinishDice(1,Dice1,Dice2,Dice3)
			Earn(nRealMoney)
		else
			SetDataInt(0,nGambMoney+nRealMoney)
			FinishDice(0,Dice1,Dice2,Dice3)
			Pay(nRealMoney)
		end
	return end
	if (nKind == 3) then	--Bao~
		Dice1 = random(1,6);
		Dice2 = random(1,6);
		Dice3 = random(1,6);
		if (Dice1 == Dice2 and Dice3 == Dice2) then
			if (RANDOM(99) < (floor(nMoney/10) + 40)) then
				while (Dice1 == Dice2) do
				Dice2 = random(1,6);
				end
				Dice3 = random(1,6);
			end
		end
		if (Dice1 == Dice2 and Dice3 == Dice2) then
			local nPlusMoney = 0;
				if(RANDOM(10) == 9) then
						nPlusMoney = (RANDOM(nMoney*2) + nMoney)*10000;
						Msg2Player(format(BONUS, nPlusMoney));
				end
			SetDataInt(0,nGambMoney-(nRealMoney*RATE3 + nPlusMoney))
				if(GetDataInt(0) < 0) then
					SetDataInt(0,0)
				end
			FinishDice(1,Dice1,Dice2,Dice3)
			Earn(nRealMoney*RATE3)
		else
			SetDataInt(0,nGambMoney+nRealMoney)
			FinishDice(0,Dice1,Dice2,Dice3)
			Pay(nRealMoney)
		end
	end
end;
