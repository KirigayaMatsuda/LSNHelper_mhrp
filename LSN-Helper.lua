script_name('LSN-Helper')
script_description('Los Santos News Helper (LSNH) for special project MyHome RP')
script_author('kyrtion#7310')
script_version('1.0')

local sampev = require 'lib.samp.events'
require 'lib.moonloader'

function send(result)
	return sampAddChatMessage('LSNH � '.. result, -17740) -- -17740
end

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end

	send('������ ������� ��������� | 1.0')
	print('Script LSN-Helper 1.0 loaded - Discord: kyrtion#7310')

	while true do
		wait(0)
		-- ��� ���� ��� >>������<< � ����� ���������� � <<��������� ����>>
	end
end

function sampev.onServerMessage(color, text)
	--print(color, '|', text)
	if color == -1616928769 and (
		text == "���������: ����� ������� ���������, ������� 'Y'" or
		text == "���������: ����� ����������������� � �����/�������, ������� '��. ������ ����' + 'H'" or
		text == "���������: ����� ������� �������� ������, ������� '��. ������ ����' + '������'" or
		text == "���������: �� ������ ��������� ������ � /mm -> ���������"
	) then return false end

	if color == 2147418282 and (text:find('������ ����� ���������� �� ��������, �����������: /edit') or text:find('�������� ����� �� ����������')) then
		if text:find('/edit') then printStyledString('/edit', 5000, 4) end
		send(text)
		return false
	end
	if color == -10059521 and (text:find('�������� ����������. �������:') or text:find('����� �� ������� ����������') or text:find('������ ���������� ��� �����������')) then
		send(text)
		return false
	end
	if color == -1 and text:find('�� �������������� ��������� �� ��������') then
		TText = text:match('%{008000%}(%d+)$%{ffffff%}')
		send('�� �������������� ��������� �� �������� '..TText..'$ �� ��� ����. ����.')
		return false
	end
	if color == -1 and text:find('�� ��������� ����������') then
		return false
	end
end

function sampev.onShowDialog(id, style, title, button1, button2, text)
	--print(id, style, title, button1, button2, text)
	if id == 1536 and title == '{6333FF}���������� ����������' and text:find("%{ffffff%}�����%:%{7FFF00%} (.*)") then
		adText = (text:match('%{ffffff%}�����%:%{7FFF00%} (.*)%{ffffff%}')):gsub("\n", "")
		if adText:find('Ponolup�����') then lua_thread.create(function() wait(0) sampSetCurrentDialogEditboxText('�������� "Ponolup Italy" ���� �����������. ��� ���! GPS 9-51.') end)

		elseif adText:find('Ponolup�����') then lua_thread.create(function() wait(0) sampSetCurrentDialogEditboxText('�������� "Ponolup Italy" ��� ������! ��������� ����� ������ �� ������: GPS 9-51.') end)

		elseif adText:find('<< ������������� >>') then lua_thread.create(function() wait(0) sampSetCurrentDialogEditboxText('���������� ������������� � ��� "for Narcos". GPS 9-46.') end)

		elseif adText:find('<< ��������� >>') then lua_thread.create(function() wait(0) sampSetCurrentDialogEditboxText('����� ������� ���� � ������, ������ � ����� AMMO "by Narcos". GPS 9-4.') end)

		else lua_thread.create(function() wait(0) sampSetCurrentDialogEditboxText(adText) end)
		end
	end
end