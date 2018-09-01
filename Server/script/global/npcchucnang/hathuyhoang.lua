
function main()
	local Yr,Mth,Dy,Hr,Mn,Se = GetTime();
	Mn = 35 - Mn;
	if(Mn < 1) then
	Mn = 1;
	end
	Msg2Player("Cßn "..Mn.." phót n÷a h¹t sÏ chÝn.");
end
