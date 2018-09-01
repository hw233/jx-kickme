--chien co
Include( "\\script\\item\\checkmapid.lua" )

function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 491, 1);			--ÉúÃüÉÏÏŞÌá¸ß30%,È«¿¹Ôö¼Ó30%
	Msg2Player("B¹n ®· sö dông 1 ChiÕn cæ ");
	RemoveItem(nItemIdx,1,1);
end