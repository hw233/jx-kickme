
function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(473, level, 1080 )	--��������շ�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> t�ng ph�ng ph� trong 1 ph�t "..(level*10).."<#> %")	
end
