Include( "\\script\\item\\checkmapid.lua" )
--tong kim doc phong hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 474, 5 ,3240);
	Msg2Player("B�n ���c 1 vi�n ��c Ph�ng ho�n");
	RemoveItem(nItemIdx,1,1);
end