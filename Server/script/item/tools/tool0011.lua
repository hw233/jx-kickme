--Script Created by Ken Nguyen
--tong kim chieu thu
function useitem(nItemIdx)
	SetTaskTemp(ITEMINDEX,nItemIdx)
	FreezeItem(nItemIdx,1)
	Say("Xin lùa chän n¬i ®Õn chiÕn tr­êng Tèng Kim:",3,
	"§iÓm b¸o danh bªn Tèng/gotong",
	"§iÓm b¸o danh bªn Kim/gokim",
	"Ch­a muèn ®i/no")
end;

function gotong()
	RemoveItem(GetTaskTemp(ITEMINDEX),1);
	NewWorld(325,floor(48928/32), floor(102272/32));--bao danh tong kim cao cap--phe Tong
end;

function gokim()
	RemoveItem(GetTaskTemp(ITEMINDEX),1);
	NewWorld(325,floor(50944/32), floor(98400/32));--bao danh tong kim cao cap--phe Kim
end;

function no()
	FreezeItem(GetTaskTemp(ITEMINDEX),0)
end;

