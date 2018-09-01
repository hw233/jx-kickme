Include( "\\script\\item\\checkmapid.lua" )
--khang don chi giac
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 510, 1);		-- 3·ÖÖÓÄÚ£¬¼õÉÙ¸½½üµĞ·½Íæ¼ÒÉËº¦·´µ¯20%
	Msg2Player("B¹n sö dông 1 Kh¸ng ®¬n chi gi¸c");
	RemoveItem(nItemIdx,1,1);
end