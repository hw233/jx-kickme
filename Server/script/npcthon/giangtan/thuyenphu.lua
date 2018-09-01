--thuyen phu
--Ken Nguyen
NOTWANT_GO = "Kh�ng ng�i/no"
BOAT_ARRAY = {
{5,400},{10,400},{6,800},{3,100},{7,800}
};

function main(nNpcIndex)
	Say(12943,2,
	"Ng�i thuy�n/ngoithuyen",
	NOTWANT_GO
							)
	
end;

function ngoithuyen()
	Say(10072,6,
	"T��ng D��ng ph� [400 L��ng]/selplace",
    "Ba L�ng huy�n [400 L��ng]/selplace",
    "D��ng Ch�u ph� [800 L��ng]/selplace",
    "��i L� [100 L��ng]/selplace",
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

function no()
	
end