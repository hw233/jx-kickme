
function add505()
		CastSkill(505, 1 )	--ȫ��ѣ��
		Msg2Player("<#> B�n s� d�ng 1<color=yellow> Tam Thanh Kh�, khi�n k� ��ch quanh b�n b� cho�ng.")	
end

function add506()
		CastSkill(506, 1 )	--ȫ�����
		Msg2Player("<#> B�n s� d�ng 1<color=yellow> Tam Thanh Kh�, khi�n k� ��ch quanh b�n b� ��ng b�ng.")	
end

function add507()
		CastSkill(507, 1 )	--ȫ���ж�
		Msg2Player("<#> B�n s� d�ng 1<color=yellow> Tam Thanh Kh�, khi�n k� ��ch quanh b�n b� tr�ng ��c.")	
end

function add508()
		CastSkill(508, 1 )	--ȫ�����
		Msg2Player("<#> B�n s� d�ng 1<color=yellow> Tam Thanh Kh�, khi�n k� ��ch quanh b�n b� gi�m t�c.")	
end

Tab={add505,add506,add507,add508}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end
