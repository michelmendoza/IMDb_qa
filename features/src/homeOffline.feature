#language: pt

@homeoffline
Funcionalidade: Acessar a página IMDb
 
    Contexto: Abrir Site IMDb
    COMO um usuario sem cadastro do IMDB EU QUERO acessar a página do IMDB a partir do site
    IMDB.com A FIM de procurar informações dos meus filmes favoritos

    Dado que eu acesso o site Imdb
    E não estou logado no sistema


    Esquema do Cenário: Acessar o link ImdbPro com usuario offline

    Quando eu clico no link IMDbPro
    Então sou direcionado para pagina de login do IMDb

    Esquema do Cenário: Acessar o link watchlist com usuario offline
    Quando eu clico no link watchlist
    Então sou direcionado para pagina de login do IMDb


    Esquema do Cenário: Adicionar um filme ao watchlist com usuario offline
    Quando eu tento adicionar um filme a watchlist
    Então sou direcionado para pagina de login do IMDb


    Esquema do Cenário: Realizar a busca com usuario offline
    Quando eu faço a busca por um filme no topo
    Então ele mostra a tela de resultado

    @atual # Problem 
    Esquema do Cenário: Clicar nos itens de menu com usuario offline
    Quando eu clico em um item de menu
    Então ele mostra a tela de resultado de acordo com o item do menu