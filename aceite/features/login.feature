# language: pt
Funcionalidade: Login
  Para validar o acesso a Home
  Como um funcionário
  Eu gostaria de acessar o SCE

  Cenário: Logar na SCE
    Dado que eu acesso a home do SCE
	Então o texto "teste timeinfra" deve estar presente no header da página