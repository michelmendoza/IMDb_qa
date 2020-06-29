  Dado('clico em Sign in') do
     find(:xpath,"//div[contains(text(),'Sign In')]").click
  end
  
  Dado('clico em Sign in with IMDb') do
    find(:xpath,"//span[contains(text(),'Sign in with IMDb')]").click

  end
  
  Dado('preencho Email já cadastrado') do
     find(:xpath,"//input[@id='ap_email']").set("artztecnologia@gmail.com")
  end

  Dado('preencho Email não cadastrado') do
    find(:xpath,"//input[@id='ap_email']").set("emainaocadastrado@gmail.com")
 end
  
  Dado('senha já cadastrada') do
    find(:xpath,"//input[@id='ap_password']").set("Floripa2020@")
  end
  
  Quando('eu clico no botão Sign-in') do
    find(:xpath," //input[@id='signInSubmit']").click
  end
  
  Então('o Nome do usuário no Topo') do
      page.has_xpath?("//span[@class='imdb-header__account-toggle--logged-in imdb-header__accountmenu-toggle navbar__user-name 
        navbar__user-menu-toggle__name navbar__user-menu-toggle--desktop']", :text => 'Artz', :visible => true)
 end

  
 Então('abre mostra uma mensagem {string}') do |string|
    page.has_xpath?("//span[@class='a-list-item']", :text => 'We cannot find an account with that email address', :visible => true)    
  end

  Dado('que eu estou logado no sistema') do
    page.has_xpath?("//label[@class='ipc-button ipc-button--single-padding ipc-button--default-height ipc-button--core-baseAlt ipc-button--theme-baseAlt ipc-button--on-textPrimary ipc-text-button navbar__flyout__text-button-after-mobile navbar__user-menu-toggle__button']")
  end

  
  Quando('eu clico em UserMenu > Signout') do
    find(:xpath, "//span[contains(text(),'Sign out')]").select_option 
end
    
  Então('ele faz o logoff do usuário') do
    page.has_xpath?("//div[contains(text(),'Sign In')]")

  end