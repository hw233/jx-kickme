
function useitem(nItemIndex)
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--��һ�����˶�������
		Msg2Player("<#> B�n nh�n ���c <color=yellow> 1 ph�t gi�m th� th��ng "..(level*10).."<#> %")
end
