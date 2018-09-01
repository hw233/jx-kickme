Include( "\\script\\item\\checkmapid.lua" )
-- tong kim hoa phong hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 476, 5 ,3240);
	Msg2Player("B¹n ®­îc 1 viªn Háa Phßng hoµn");
	RemoveItem(nItemIdx,1,1);
end