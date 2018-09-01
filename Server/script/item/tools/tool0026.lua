Include( "\\script\\item\\checkmapid.lua" )
--tong kim noi doc hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 480, 5 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Néi §éc hoµn");
	RemoveItem(nItemIdx,1,1);
end