
function main()
	local Yr,Mth,Dy,Hr,Mn,Se = GetTime();
	Mn = 35 - Mn;
	if(Mn < 1) then
	Mn = 1;
	end
	Msg2Player("C�n "..Mn.." ph�t n�a h�t s� ch�n.");
end
