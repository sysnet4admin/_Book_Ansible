@echo off
setlocal 
set /p name=��� vagrant�� �籸�� �� �����Ͻðڽ��ϱ�? ^
��δ� �׳� enter�� �Է� �ϼ���: || set name=default

if %name%==default (
	vagrant halt && vagrant destroy -f && vagrant up
) else (
    vagrant halt %name% && vagrant destroy %name% -f && vagrant up %name%
)