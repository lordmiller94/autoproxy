============================================
CONFIGURADOR AUTOMATICO DE PROXY - AUTOPROXY
============================================

Versão 1.0 - 10:45 20/03/2023
=============================

	-Versão de lançamento

DESCRIÇÃO
=========
Scripts de configuração automática de proxy para usuários que façam logon pela primeira vez no sistema

LICENÇA
=======
O software é disponibilizado "como está" e não possui suporte oficial ou garantia legal
Você pode utilizá-lo para qualquer fim e é responsável pelo uso.
Não me responsabilizo por possiveis danos causados por este software. Utilize-o com cautela

APLICAÇÃO
=========
Deve ser utilizado em redes onde haja necessidade de configuração manual em que o proxy não seja transparente ao usuário. Desenvolvido para o uso manual e automático via script

CONFIGURAÇÃO
============

-Crie numa pasta chamada "Autoproxy" na raiz do sistema
-Coloque os arquivos dentro da pasta criada
-Edite o arquivo "\Autoproxy\proxy.bat" com um editor de texto plano, como o bloco de notas

	NOTA: Você pode alterar o local de instalação editanto o arquivo "Autoproxy_install.bat" e alterando a variável "folder_name"

-Na seção de variáveis, configure as informações do proxy da sua rede:

	Endereço do proxy:
	-----------------------------
	proxy_address=000.000.000.000
	-----------------------------

	Número da porta de comunicação do proxy:
	-----------------------
	proxy_address_port=8080
	-----------------------
	
	Exceções para o uso do proxy:
	------------------------
	proxy_override="<local>"
	------------------------

	Insira as exeções de uso do proxy no formato: "site1.com;site2.com;site3.com" (incluindo aspas)
	NOTA: Para marcar a caixa "Não usar servidor proxy para endereços locais", insira <local> no fim da variável, exemplo: "site1.com;site2.com;site3.com;<local>" (incluindo aspas)


-Salve e feche o arquivo

INSTALAÇÃO / DESINSTALAÇÃO
==========================

	MANUAL
	======

-Execute o arquivo "\Autoproxy.bat" para habilitar o proxy manualmente
-Execute o arquivo "\Autoproxy_remove.bat" para desabilitar o proxy manualmente

NOTA: Esta configuração manual aplica-se apenas ao usuário atual e não deve ser executada com permissões de administrador

-Crie os atalhos para os arquivos "proxy.bat" e "proxy_remove.bat" na área de trabalho do usuário atual ou para "\Users\Public\Desktop" para colocá-los na área de trabalho de todos os usuários, caso deseje

	AUTOPROXY
	=========

-Execute o arquivo "\Autoproxy\AutoProxy_install.bat" para instalar o script de configuração do proxy na inicialização dos usuários

	NOTA: O script é executado somente no primeiro logon. Usuários que já logaram anteriormente deverão usar a configuração manual

-Para remover o "AUTOPROXY", execute o arquivo "\Autoproxy\AutoProxy_uninstall.bat"

	NOTA: Usuários com proxy já configurado devem fazer a remoção da configuração em seus perfis manualmente	

	ATENÇÃO: Ambos os scripts de instalação e desinstalação do "AUTOPROXY" devem ser executados com permissões de administrador

Aproveite!!!

Este software é disponível "como está" e não possui suporte oficial. Use com cautela
Desenvolvido para Windows 10 21H2