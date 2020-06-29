

Dado('seleciono o filme na busca') do
    find(:xpath,"//tr[@class='findResult odd']//img").click
  
  end

Quando('eu clico no icone {string}') do |string|

    sleep 5
    find(:xpath,"//div[@class='ribbonize']").click  

  end
  
  
  Então('o filme é adicionado na Watchlist') do
    find(:xpath, "//a[@class='ipc-button ipc-button--single-padding ipc-button--default-height ipc-button--core-baseAlt ipc-button--theme-baseAlt ipc-button--on-textPrimary ipc-text-button']").click
    page.has_xpath?("//h1[contains(text(),'A Origem (2010)')]")
end