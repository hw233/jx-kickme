
function useitem(nItemIndex)
		local level = random(1,2);
		AddSkillState(496, level, 1080 )	--��һ���书���ж����ٶ�����
		Msg2Player("<#> B�n nh�n ���c <color=yellow> t�ng ��ng t�c xu�t chi�u trong 1 ph�t "..(level*10).."<#> %")	
end
