
function main(sel)
	SetFightState(1)
	local a = random(1,6)
	if a == 1 then
 	NewWorld(225,1474,3271)    
	AddWayPoint(226)
	elseif a == 2 then        
	NewWorld(225,1579,3185)
	AddWayPoint(226)
	elseif a == 3 then        
	NewWorld(226,1555,3176)
	AddWayPoint(227)
	elseif a == 4 then
 	NewWorld(226,1554,3175)    
	AddWayPoint(227)
	elseif a == 5 then
 	NewWorld(226,1691,3247)    
	AddWayPoint(227)
	elseif a == 5 then        
	NewWorld(227,1583,3242)
	AddWayPoint(228)
	else        
	NewWorld(227,1525,3274)
	AddWayPoint(228)
	end
end;
