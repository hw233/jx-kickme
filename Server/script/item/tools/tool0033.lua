Include( "\\script\\item\\checkmapid.lua" )
--tong kim cao trung hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 495, 50 , 3240);
	Msg2Player("B�n ���c 1 vi�n Cao Trung ho�n");
	RemoveItem(nItemIdx,1,1);
end