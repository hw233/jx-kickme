--thuyen phu
--Ken Nguyen
NOTWANT_GO = "Kh�ng ng�i/no"
BOAT_ARRAY = {
{8,400},{5,100},{6,400},{3,400},{7,400}
};

function main(nNpcIndex)
	local nParam = GetNpcValue(nNpcIndex)
	if(nParam == 1) then
	Say(11231,2,
	"Ng�i thuy�n/ngoithuyen",
	NOTWANT_GO
							)
	return end
	Say(11234,2,
	"�i Thi�n V��ng ��o/gothienvuong",
	NOTWANT_GO
	)
	
end;

function ngoithuyen()
	Say(10072,6,
	"Giang T�n th�n [400 L��ng]/selplace",
    "T��ng D��ng ph� [400 L��ng]/selplace",
    "D��ng Ch�u ph� [800 L��ng]/selplace",
    "��i L� [800 L��ng]/selplace",
    "L�m An ph� [800 L��ng]/selplace",
    NOTWANT_GO)
end

function selplace(sel)
	local nSel = sel + 1
	local nPrice = BOAT_ARRAY[nSel][2]
	local nMoney = GetCash();
	if(nMoney < nPrice) then
	Talk(1,"",10073);
	else
		local nW, nX, nY = GetStationPos(BOAT_ARRAY[nSel][1]);
		if(NewWorld(nW, nX , nY ) == 1) then
			Pay(nPrice);
			Msg2Player("Ng�i y�n! Ch�ng ta �i "..GetStationName(BOAT_ARRAY[nSel][1]).."!");
		else --chua mo map
			PutMessage("���ng �i ph�a tr��c kh�ng th�ng")
		end
	end
end

function gothienvuong()
	
end

function no()
	
end