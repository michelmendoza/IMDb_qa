#language: pt

@yourwatchlist
Funcionalidade: Your Watchlist
 
  
    Contexto: Gerenciar Watchlits
    COMO um usuario com cadastro do IMDB EU QUERO logar na página do IMDB a partir do site
    IMDB.com A FIM de procurar informações dos meus filmes favoritos E gerenciar minhas listas

    Dado que eu acesso o site Imdb
    E clico em Sign in
    E clico em Sign in with IMDb 
    E preencho Email já cadastrado
    E senha já cadastrada
    Quando eu clico no botão Sign-in
    Então o Nome do usuário no Topo
    
    
    Esquema do Cenário: Fazer login com usuario Imdb com sucesso
    Dado que eu acesso o site Imdb
    E não estou logado no sistema
    E eu faço a busca por um filme no topo
    E ele mostra a tela de resultado
    E seleciono o filme na busca
    Quando eu clico no icone "+"
    Então o filme é adicionado na Watchlist
 