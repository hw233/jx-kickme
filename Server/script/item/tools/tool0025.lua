Include( "\\script\\item\\checkmapid.lua" )
--tong kim noi pho hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 479, 10 , 3240);
	Msg2Player("B�n ���c 1 vi�n N�i Ph� ho�n");
	RemoveItem(nItemIdx,1,1);
end