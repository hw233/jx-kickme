-- Script by Ken Nguyen

function addnpctaytuy()
	AddNpcAuto(3,194,207,{413,414,415},1,242,180,201,"",
		5,nil,1,"555",1,30000,nil,nil,1,nil,nil,nil,600,nil,nil,"");
	AddNpcAuto(3,217,208,{413,414,415},1,242,197,204,"",
		5,nil,1,"555",1,30000,nil,nil,1,nil,nil,nil,600,nil,nil,"");
	AddNpcAuto(3,213,195,{413,414,415},1,242,204,187,"",
		5,nil,1,"555",1,30000,nil,nil,1,nil,nil,nil,600,nil,nil,"");
		
	----NPC Chuc nang-----

	AddNpcNew(625,1,242,1606*32,3172*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6)
	AddNpcNew(64,1,242,1596*32,3210*32,"\\script\\global\\npcchucnang\\phantang.lua",6,291)
	local nNpcIdx = AddNpcNew(259,1,242,1635*32,3218*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,292)
	SetNpcValue(nNpcIdx,33)
end;

function addtraptaytuy()
	AddTrapEx2(242,1583,3224,12,"\\script\\maps\\taytuy\\trap\\cong8h.lua")
	AddTrapEx1(242,1643,3244,16,"\\script\\maps\\taytuy\\trap\\cong4h.lua")
	AddTrapEx2(242,1643,3172,12,"\\script\\maps\\taytuy\\trap\\cong2h.lua")
	AddTrapEx1(242,1584,3185,22,"\\script\\maps\\taytuy\\trap\\cong12h.lua")
end
