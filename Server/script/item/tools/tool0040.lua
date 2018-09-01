Include( "\\script\\item\\checkmapid.lua" )
--IncludeLib("BATTLE")
--Bo cau tong kim
function useitem(nItemIdx)
		if(CheckMap() == 0) then
			return
		end
	local nowmissionid = 1;	--»ñÈ¡µ±Ç°MISSIONID
	local curcamp = GetCurCamp();
	local W,X,Y = GetWorldPos();
	X = floor( X /32/ 8 );
	Y = floor( Y /32/ 16 );
	string = "<#><color=yellow>"..GetName().."<#> <color><color=pink>: 'Täa ®é hiÖn t¹i cña ta lµ <color=yellow> ("..X.."<#>, "..Y.."<#> )<color>. H·y ®Õn gióp ta mét tay.'";
	Msg2MSGroup( nowmissionid, string, curcamp-1 );
	Msg2Player("B¹n sö dông bå c©u th«ng b¸o cho chiÕn h÷u täa ®é hiÖn t¹i cña b¹n.");
	RemoveItem(nItemIdx,1,1);
end
