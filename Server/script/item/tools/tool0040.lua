Include( "\\script\\item\\checkmapid.lua" )
--IncludeLib("BATTLE")
--Bo cau tong kim
function useitem(nItemIdx)
		if(CheckMap() == 0) then
			return
		end
	local nowmissionid = 1;	--��ȡ��ǰMISSIONID
	local curcamp = GetCurCamp();
	local W,X,Y = GetWorldPos();
	X = floor( X /32/ 8 );
	Y = floor( Y /32/ 16 );
	string = "<#><color=yellow>"..GetName().."<#> <color><color=pink>: 'T�a �� hi�n t�i c�a ta l� <color=yellow> ("..X.."<#>, "..Y.."<#> )<color>. H�y ��n gi�p ta m�t tay.'";
	Msg2MSGroup( nowmissionid, string, curcamp-1 );
	Msg2Player("B�n s� d�ng b� c�u th�ng b�o cho chi�n h�u t�a �� hi�n t�i c�a b�n.");
	RemoveItem(nItemIdx,1,1);
end
