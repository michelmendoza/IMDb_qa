
############### Começa Aqui


Dado('que eu acesso o site Imdb') do
    visit 'https://www.imdb.com/'
    page.driver.browser.manage.window.resize_to(1640, 1200)
  end
  E('não estou logado no sistema') do
    page.has_xpath?("//div[contains(text(),'Sign In')]")
  end
  Quando('eu clico no link IMDbPro') do
    find(:xpath, "//div[contains(text(),'Sign In')]").click
  end
  

  Então('sou direcionado para pagina de login do IMDb') do
    page.has_xpath?("//h1[contains(text(),'Sign in')]")
    page.has_xpath?("//h1[contains(text(),'Benefits of your free IMDb account')]")
   end
   Quando('eu clico no link watchlist') do
    find(:xpath, "//a[@class='ipc-button ipc-button--single-padding ipc-button--default-height ipc-button--core-baseAlt ipc-button--theme-baseAlt ipc-button--on-textPrimary ipc-text-button']").click
  end
 
  

  Quando('eu tento adicionar um filme a watchlist') do
    find(:xpath, "//a[@id='home_img_holder']").click
    find(:xpath, "//div[@class='swiper-slide swiper-slide-active']//div[@class='ipc-watchlist-ribbon__icon']//*[local-name()='svg']").click
 end
 

 Quando('eu faço a busca por um filme no topo') do
  find(:xpath, "//input[@id='suggestion-search']").set("A Origem (2010)")  
  find(:xpath, "//button[@id='suggestion-search-button'] ").click
end

Então('ele mostra a tela de resultado') do
  page.has_xpath?("//span[@class='findSearchTerm']", :text => 'A Origem', :visible => true)
end


Quando('eu clico em um item de menu') do
   find(:xpath, "//span[contains(text(),'Coming Soon')]").select_option 
 
end

Então('ele mostra a tela de resultado de acordo com o item do menu') do
  find(:xpath, "  //a[contains(text(),'In Theaters')]").click
  find(:xpath, "//a[contains(text(),'Coming Soon')]").click


end
