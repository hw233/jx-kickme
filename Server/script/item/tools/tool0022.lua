--Script Created by Ken Nguyen
Include( "\\script\\item\\checkmapid.lua" )
--Tong kim ngoai pho hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 487, 5, 180*18);
	Msg2Player("B�n ���c 1 vi�n Ngo�i Ph� ho�n");
	RemoveItem(nItemIdx,1,1);
end