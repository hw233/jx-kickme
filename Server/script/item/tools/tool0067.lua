
function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(474, level, 1080 )	--������Ҷ���
		Msg2Player("<#> B�n nh�n ���c <color=yellow> t�ng ph�ng ��c trong 1 ph�t "..(level*10).."<#> %")	
end
