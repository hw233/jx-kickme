--vo lam minh chu
--Author: Ken Nguyen 2013
--DMEM TEAM

function main(NpcIndex)
	Say(12251,3,
	"Th�nh l�p bang h�i/thanhlap",
	"T�m hi�u v� bang h�i/timhieu",
	"��ng/no")
end;

function thanhlap()
	if(GetTongName() ~= "") then
		Talk(1,"",12263)
	return end
	OpenTong()
end;

function timhieu()
	Talk(5,"",12252,12259,12260,12261,12262)
end;

function no()
end;