# encoding: utf-8


####### Variaveis da aplicacao
url_sce = "http://sce.globoi.com/"

##############################



def desloga_logado
  if @browser.span(:class => "user").exists? == true
    @browser.link(:text => "Sair do Sistema").click
  end
end
  

def admin_sce_present
  sleep(2)
  desloga_logado()
  if @browser.div(:class, "glb-bloco layout-login").exists? ==true
    @browser.text_field(:name, "login-passaporte").set("fcunha.to@corp.globo.com")
    if ENV['FIREWATIR']
      @browser.text_field(:name, "senha-passaporte").set('spiderman2')
    else
      @browser.password(:name, "senha-passaporte").set('spiderman2')
    end
    @browser.button(:class, "botao-acessar").click
  end
  sleep(1)
end


Dado 'que eu acesso a home do SCE' do
  @browser.goto url_sce
  verifica_logado()
end

Dado 'que eu acesso o admin do sce' do
  @browser.goto url_sce
  sleep(2)
  verifica_logado()
end

Então /devo efetuar logout no sistema/ do
  @browser.link(:text, 'Sair do Sistema').click
end

Então /o texto "(.*)" deve estar presente no header da página/ do |text|
  sleep(2)
  @browser.div(:class, 'user').contains_text(text).should be_true
end

Então /clico na opção de menu para configurar usuarios/ do
  sleep(2)
  @browser.h3(:class, "user").click
  sleep(2)
end


Então /clico em mostrar filtro/ do
  @browser.link(:class, "preferred-action filter").click_link_jquery
end

Então /preencho o campo de email com o texto "(.*)"/ do |campo_email|
  @browser.text_field(:class, "text email").set(campo_email)
end

Então /clico no botão de aplicar/ do
  @browser.button(:class, "button apply").click
end

Então /clico na ação editar/ do
  @browser.link(:class, "edit").click
  sleep(2)
end


Então /marco somente a opção "(.*)"/ do |perfil|
  item = Array.new
  @browser.table(:class, "edit").lis.each do |li|
    item << li.text
  end
  item.each do |x|
    if @browser.checkbox(:id => "id_group_" + item.index(x).to_s).clear == true
      @browser.checkbox(:id => "id_group_" + item.index(x).to_s).clear
    end
  end
    @browser.checkbox(:id => "id_group_" + item.index(perfil).to_s).click
end

Então 'salvo o formulario' do
  @browser.button(:title, "Salvar").click
end

Então /marco a opção "(.*)"/ do |mark|
  opcao = Array.new
  @browser.table(:class, "edit").lis.each do |tabela|
    opcao << tabela.text
  end
  @browser.checkbox(:id => "id_group_" + opcao.index(mark).to_s).click
end

Então /saio do sistema/ do
  @browser.link(:text => "Sair do Sistema").click
end

Então /devo ter acesso a area de "(.*)"/ do |area|
  area = area.downcase.removeaccents
  area = mapa.assoc("#{area}")[1]
  @browser.link(:href, "#{area}").exist?.should == true

end

Então /não devo ter acesso as funções de "(.*)"/ do |area|
  area = area.downcase.removeaccents
  area = mapa.assoc("#{area}")[1]
  @browser.link(:href, "#{area}").exist?.should == false
end
