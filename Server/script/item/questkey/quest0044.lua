-- Script tui thu long ngu~

function useitem(nItemIdx)
	if(CheckRoom(2,1) == 1) then
		local nid = ItemSetAdd(0,4,47,0,0,5,0);
		LockItem(nid);
		AddItemID(nid);
		nid = ItemSetAdd(0,4,50,0,0,5,0);
		LockItem(nid);
		AddItemID(nid);
		RemoveItem(nItemIdx,1);
	else
		Talk(1,"",12265);
	end
end;
