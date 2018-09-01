Include("\\script\\header\\taskid.lua");

function main()
	local nTask = GetNumber(GetTask(TASK_NVDANHVONG),6);
	if(nTask == 1 and GetItemCount(58) < 1) then
	Say(11255,2,"Mua/muabong","T¸n gÉu/tangau")
	return end
	tangau()
end

function muabong()
	if(GetCash() < 200) then
	Talk(1,"",11261)
	else
	AddItem(0,4,58,0,0,5,0,0)
	Pay(200)
	Msg2Player("Mua ®­îc 1 ®«i b«ng tay.")
	Talk(1,"",11260)
	end
end

function tangau()
Talk(3,"morongruong",11257,11258,11259)
end

function morongruong()
if(GetExBox() == 0) then
Say(11256,2,"Mua r­¬ng/muaruong","Kh«ng mua/no")
end
end

function muaruong()
	if(GetItemCount(17,3) >= 2) then	--2 hoang kim bao
	SetExBox(1)
	DelItem(17,3,2)
	Talk(1,"",11263)
	Msg2Player("Më réng r­¬ng chøa ®å thµnh c«ng, b¹n ®· cã thÓ thiÕt lËp m· khãa r­¬ng.")
	else 
	Talk(1,"",11261)
	end
end

function no()
end