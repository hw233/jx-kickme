Include("\\script\\item\\checkmapid.lua");
--Script Created by Ken Nguyen
--Tho dia phu`
function useitem(nItemIndex)
	if(GetFightState() == 0) then
	Msg2Player("Kh«ng thÓ sö dông Thæ ®Þa phï ë n¬i phi chiÕn ®Êu!")
	return end
	if(CheckMapForTP() == 1) then
	Msg2Player("N¬i ®©y kh«ng thÓ sö dông thæ ®Þa phï!")
	return end;
	BackHome()
	RemoveItem(nItemIndex, 1)
end;
