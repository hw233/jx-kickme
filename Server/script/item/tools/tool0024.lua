Include( "\\script\\item\\checkmapid.lua" )
--Tong kim ngoai bang hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 486, 10 , 3240);
	Msg2Player("B�n ���c 1 vi�n Ngo�i B�ng ho�n");
	RemoveItem(nItemIdx,1,1);
end