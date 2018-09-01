Include("\\script\\header\\taskid.lua");
function main()
	local nTaskValue = GetTask(TASK_DAOTAYTUY);
	local nTask = GetNumber(nTaskValue,9);
	if(nTask == 0) then
	Say(11275,2,
	"Gióp/giup",
	"Kh«ng gióp/kogiup"
	)
	elseif(nTask == 1 or nTask == 2) then
		if(GetItemCount(57) > 0) then
		SetTask(TASK_DAOTAYTUY,SetNumber(nTaskValue,9,3));
		if(GetSex() == 0) then
		AddItem(0,0,5,0,1,1,0,0)
		Msg2Player("LÊy ®­îc ®«i giÇy cá.")
		else
		AddItem(0,0,5,2,1,1,0,0)
		Msg2Player("LÊy ®­îc ®«i giÇy thªu.")
		end
		DelItem(57)
		AddRepute(5)
		Msg2Player("§­a Tú Bµ hoµn cho TiÓu Ng­ hoµn thµnh nhiÖm vô.")
		Msg2Player("Danh väng b¹n t¨ng thªm 5 ®iÓm.")
		Talk(1,"",11276)
		else
		Talk(1,"",11277)
		end
	else
		Talk(1,"",11278)
	end
end;

function giup()
	SetTask(TASK_DAOTAYTUY, SetNumber(GetTask(TASK_DAOTAYTUY),9,1));
	Talk(1,"",11280)
	Msg2Player("TiÕp nhËn nhiÖm vô: gióp TiÓu Ng­ mua thuèc Tú Bµ hoµn ®Ó ch÷a bÖnh cho bè.")
end

function kogiup()
	Talk(1,"",11281)
end
