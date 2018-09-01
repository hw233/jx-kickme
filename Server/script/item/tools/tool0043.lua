Include( "\\script\\item\\checkmapid.lua" )
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
		AddSkillState(472, 10, 54 )	--Ôö¼ÓÍæ¼ÒÑªÁ¿ºÍÄÚÁ¦³ÖĞø»Ö¸´
		Msg2Player("<#> B¹n sö dông 1 Cµn Kh«n T¹o Hãa ®an (Võa) .")	
	RemoveItem(nItemIdx,1,1);
end

