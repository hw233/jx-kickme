
-- Ken Nguyen
-- npc tien trang
--Include("\\script\\header\\taskid.lua");
FUNC_MAIN = "chaohang"
function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if (w == 1) then--phuong tuong
	Talk(1,FUNC_MAIN,12235)
	return end
	if (w == 11) then--thanh do
	Talk(1,FUNC_MAIN,12235)
	return end
	if (w == 162) then--dai ly
	Talk(1,FUNC_MAIN,12235)
	return end
	if (w == 78) then--tuong duong
	Talk(1,FUNC_MAIN,RANDOM(15267,15268))
	return end
	if (w == 37) then--bien kinh
	Talk(1,FUNC_MAIN,14792)
	return end
	if (w == 80) then--duong chau
	Talk(1,FUNC_MAIN,15453)
	return end
	if (w == 176) then--lam an
	Talk(1,FUNC_MAIN,10831)
	return end
	Talk(1,FUNC_MAIN,12235)
end;

function chaohang()
	local OK_TRADE = "��i Kim Nguy�n B�o sang ti�n ��ng?/tiendong";
	local NOT_TRADE = "Nh�n ti�n gh� qua th�i/no";
	if(GetSex() == 0) then
	Say(10085,2,
		OK_TRADE,
		NOT_TRADE)
	else
	Say(10086,2,
		OK_TRADE,
		NOT_TRADE)
	end;
end;

function tiendong()
	local nKNB = GetItemCount(17,3);
	if(nKNB < 1) then
		Talk(1,"",15290)
	return end
	AddItem(0,3,21,0,0,5,10,0) --tien dong 10 cai
	DelItem(17,3)
	Msg2Player("B�n �� ��i ���c 10 ti�n ��ng.")
end;

function knb2van()
	local nKNB = GetItemCount(17,3);
	if(nKNB < 1) then
		Talk(1,"",15290)
	return end
	DelItem(17,3)
	Earn(2000000)
	Msg2Player("B�n �� ��i ���c 200 v�n ng�n l��ng.")
end;

function no()
end;
