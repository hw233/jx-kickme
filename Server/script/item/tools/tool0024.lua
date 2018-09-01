Include( "\\script\\item\\checkmapid.lua" )
--Tong kim ngoai bang hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 486, 10 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Ngo¹i B¨ng hoµn");
	RemoveItem(nItemIdx,1,1);
end