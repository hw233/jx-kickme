Include( "\\script\\item\\checkmapid.lua" )
--tong kim noi hoa hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 482, 10 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Néi Háa hoµn");
	RemoveItem(nItemIdx,1,1);
end