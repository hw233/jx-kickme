Include( "\\script\\item\\checkmapid.lua" )
--tong kim cao thiem hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 494, 50 , 3240);
	Msg2Player("B�n ���c 1 vi�n Cao Thi�m ho�n");
	RemoveItem(nItemIdx,1,1);
end