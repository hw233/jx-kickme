
function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(477, level, 1080 )	--��������׷�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> t�ng ph�ng l�i trong 1 ph�t "..(level*10).."<#> %")	
end
