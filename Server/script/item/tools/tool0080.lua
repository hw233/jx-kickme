
function useitem(nItemIndex)
		local level = random(10,20);
		AddSkillState(495, level, 1080 )	--��һ������������
		Msg2Player("<#> B�n nh�n ���c <color=yellow> t�ng �� t�n c�ng ch�nh x�c trong 1 ph�t "..(level*10).."<#> %")	
end
