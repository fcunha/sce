# language: pt
Funcionalidade: Edição de Perfil
	Para Alterar meus dados
	Como funcionário
	Eu gostaria de poder visualizar e alterar meus dados



Cenário: Validação do Perfil Administrador de pools
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Administrador de pools"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Hosts"
	E devo ter acesso a area de "Criar pool"
	E devo ter acesso a area de "Processos"
	E devo ter acesso a area de "Relatório de consumo"
	E devo ter acesso a area de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema

Cenário: Validação do Perfil Administrador de Projetos
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Administrador de projetos"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Processos"
	E devo ter acesso a area de "Logs de operações"
	E devo ter acesso a area de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E devo ter acesso a area de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E devo ter acesso a area de "Owners"
	Então saio do sistema
	

Cenário: Validação do Perfil Administrador de recursos de rede
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Administrador de recursos de rede"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	E não devo ter acesso as funções de "Processos"
	Então devo ter acesso a area de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema



Cenário: Validação do Perfil Administrador de usuários
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Administrador de usuários"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então não devo ter acesso as funções de "Processos"
	E não devo ter acesso as funções de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E devo ter acesso a area de "Configuração de usuários"
	E devo ter acesso a area de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema
	
Cenário: Validação do Perfil Administrador de VM
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Administrador de VM"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Processos"
	E devo ter acesso a area de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema

Cenário: Validação do Perfil Administrador de VM de homologação
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Administrador de VM de homologação"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Processos"
	E devo ter acesso a area de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema

Cenário: Validação do Perfil Administrador de VM de produção
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Administrador de VM de produção"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Processos"
	E devo ter acesso a area de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema


Cenário: Validação do Perfil Administrador do sistema
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Administrador do sistema"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então não devo ter acesso as funções de "Processos"
	E devo ter acesso a area de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E devo ter acesso a area de "Servidores de Transbordo"
	E devo ter acesso a area de "Templates de VMs"
	E devo ter acesso a area de "Relatório de consumo"
	E devo ter acesso a area de "Configuração de usuários"
	E devo ter acesso a area de "Controle de acesso"
	E devo ter acesso a area de "Configurações do sistema"
	E devo ter acesso a area de "Owners"
	Então saio do sistema


Cenário: Validação do Perfil Operador de pools
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Operador de pools"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Processos"
	E não devo ter acesso as funções de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E devo ter acesso a area de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema
	
Cenário: Validação do Perfil Operador de VM
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Operador de VM"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Processos"
	E não devo ter acesso as funções de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema
	
	
Cenário: Validação do Perfil Operador de VM de homologação
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Operador de VM de homologação"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Processos"
	E não devo ter acesso as funções de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema
	
Cenário: Validação do Perfil Operador de VM de produção
	Dado que eu acesso o admin do orquestra
	E clico na opção de menu para configurar usuarios
	E clico em mostrar filtro
	E preencho o campo de email com o texto "teste_timeinfra@corp.globo.com"
	E clico no botão de aplicar
	E clico na ação editar
	E marco somente a opção "Operador de VM de produção"
	E salvo o formulario
	E saio do sistema
	Dado que eu acesso a home do orquestra
	Então devo ter acesso a area de "Processos"
	E não devo ter acesso as funções de "Logs de operações"
	E não devo ter acesso as funções de "Projetos"
	E não devo ter acesso as funções de "Hosts"
	E não devo ter acesso as funções de "Criar pool"
	E não devo ter acesso as funções de "Servidores de Transbordo"
	E não devo ter acesso as funções de "Templates de VMs"
	E não devo ter acesso as funções de "Relatório de consumo"
	E não devo ter acesso as funções de "Configuração de usuários"
	E não devo ter acesso as funções de "Controle de acesso"
	E não devo ter acesso as funções de "Configurações do sistema"
	E não devo ter acesso as funções de "Owners"
	Então saio do sistema