Include( "\\script\\item\\checkmapid.lua" )
--tong kim bang phong hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 475, 5 ,3240);
	Msg2Player("B�n ���c 1 vi�n B�ng Ph�ng ho�n");
	RemoveItem(nItemIdx,1,1);
end