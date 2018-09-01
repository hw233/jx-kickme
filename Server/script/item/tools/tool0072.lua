
function add479()
		local level = random(10,20);
		AddSkillState(479, level, 1080 )	--Ôö¼ÓÍæ¼ÒÄÚÆÕÉËº¦
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> s¸t th­¬ng vËt lı néi c«ng trong 1 phót t¨ng: "..(level*10).."<#> ®iÓm")	
end

function add487()
		local level = random(5,10);
		AddSkillState(487, level, 1080 )	--Ôö¼ÓÍæ¼ÒÍâÆÕÉËº¦°Ù·Ö±È
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> s¸t th­¬ng vËt lı ngo¹i c«ng trong 1 phót t¨ng "..(level*10).."<#> %")	
end

Tab={add479,add487}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end
