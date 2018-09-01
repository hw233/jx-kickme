--lenh bai
Include( "\\script\\item\\checkmapid.lua" )

function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 492, 1);		--ÅÜËÙÔö¼Ó30%,¹¥ËÙÔö¼Ó50%
	Msg2Player("B¹n ®· sö dông 1 lÖnh bµi");
	RemoveItem(nItemIdx,1,1);
end