
function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(475, level, 1080 )	--������ұ���
		Msg2Player("<#> B�n nh�n ���c <color=yellow> t�ng ph�ng b�ng trong 1 ph�t "..(level*10).."<#> %")	
end
