Include( "\\script\\item\\checkmapid.lua" )
--tong kim phi toc hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 496, 5 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Phi Tèc hoµn");
	RemoveItem(nItemIdx,1,1);
end