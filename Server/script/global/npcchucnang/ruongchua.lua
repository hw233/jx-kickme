--Chuc nang: Ruong chua do va luu ruong
--Copyright by: Ken Nguyen

function main(NpcIndex)
	OpenBox();
	local nRevivalid = GetNpcValue(NpcIndex)
	if(nRevivalid ~= nil and nRevivalid > 0) then
	SetRevPos(nRevivalid)
	end
end