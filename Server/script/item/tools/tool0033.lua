Include( "\\script\\item\\checkmapid.lua" )
--tong kim cao trung hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 495, 50 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Cao Trung hoµn");
	RemoveItem(nItemIdx,1,1);
end