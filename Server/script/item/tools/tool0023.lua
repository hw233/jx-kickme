--Script Created by Ken Nguyen
--Tong kim ngoai doc hoan
Include( "\\script\\item\\checkmapid.lua" )

function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 485, 5 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Ngo¹i §éc hoµn");
	RemoveItem(nItemIdx,1,1);
end