
function useitem(nItemIndex)
		local level = random(1,3);
		AddSkillState(493, level, 1080 )	--��һ����������
		Msg2Player("<#> B�n nh�n ���c <color=yellow> t�ng t�c �� di chuy�n trong 1 ph�t "..(level*10).."<#> %")	
end
