#language: pt

@homesignin
Funcionalidade: Acessar a página IMDb
 
    Contexto: Abrir Site IMDb
    COMO um usuario com cadastro do IMDB EU QUERO logar na página do IMDB a partir do site
    IMDB.com A FIM de procurar informações dos meus filmes favoritos E gerenciar minhas listas

    Dado que eu acesso o site Imdb
    
 @loginsucess
    Esquema do Cenário: Fazer login com usuario Imdb com sucesso
    E clico em Sign in
    E clico em Sign in with IMDb 
    E preencho Email já cadastrado
    E senha já cadastrada
    Quando eu clico no botão Sign-in
    Então o Nome do usuário no Topo


    Esquema do Cenário: Fazer Logoff
    Dado que eu estou logado no sistema
    Quando eu clico em UserMenu > Signout
    Então ele faz o logoff do usuário

    Esquema do Cenário: Fazer login com usuario Imdb - conta inválida
    Dado que eu acesso o site Imdb
    E clico em Sign in
    E clico em Sign in with IMDb 
    E preencho Email não cadastrado
    E senha já cadastrada
    Quando eu clico no botão Sign-in
    Então o Nome do usuário no Topo
    Então abre mostra uma mensagem "There was a problem We cannot find an account with that email address"
 
