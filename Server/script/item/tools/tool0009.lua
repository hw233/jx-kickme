Include("\\script\\item\\checkmapid.lua");
--Script Created by Ken Nguyen
--Tho dia phu` vo han
function useitem(nItemIndex)
	if(GetFightState() == 0) then
	Msg2Player("Kh«ng thÓ sö dông Thæ ®Þa phï ë n¬i phi chiÕn ®Êu!")
	return end
	if(CheckMapForTP() == 1 or GetNumber(GetTask(TASK_LINHTINH),2) > 0) then
	Msg2Player("N¬i ®©y kh«ng thÓ sö dông thæ ®Þa phï!")
	return end;
	BackHome()
end;
