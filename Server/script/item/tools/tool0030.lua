Include( "\\script\\item\\checkmapid.lua" )
--tong kim truong menh hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 488, 5 , 3240);
	Msg2Player("B�n ���c 1 vi�n Tr��ng M�nh ho�n");
	RemoveItem(nItemIdx,1,1);
end