Include( "\\script\\item\\checkmapid.lua" )
-- tong kim loi phong hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 477, 5 ,3240);
	Msg2Player("B¹n ®­îc 1 viªn L«i Phßng hoµn");
	RemoveItem(nItemIdx,1,1);
end