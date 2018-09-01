Include( "\\script\\item\\checkmapid.lua" )
--tong kim noi bang hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 481, 10 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Néi B¨ng hoµn");
	RemoveItem(nItemIdx,1,1);
end