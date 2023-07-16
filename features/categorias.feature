Feature: Criação de categorias de itens
    As a funcionário do restaurante
    I want criar uma nova categoria de item
    So that eu possa diversificar ainda mais o cardápio

    Scenario: Adicionar uma nova categoria
        Given eu estou na página "cardápio"
        And estou logado como "Heitor"
        And eu seleciono a opção "inserir nova categoria"
        When eu acesso a página "nova categoria"
        And eu insiro a categoria "sobremesas"
        And eu clico em "confirmar"
        Then aparece uma mensagem na tela informando "categoria 
        adicionada com sucesso!"

    Scenario: Adicionar uma categoria existente
        Given que eu estou na página "cardápio"
        And estou logado como "Heitor"
        And eu seleciono a opção "inserir nova categoria"
        When eu acesso a página "nova categoria"
        And eu insiro a categoria "sobremesas"
        And eu clico em "confirmar"
        Then o sistema não adicionará a categoria, mostrando um pop-up 
        na minha tela, informando "Erro: categoria já existente"

    Scenario: Adicionar uma categoria com nome inválido
        Given que eu estou na página "cardápio"
        And estou logado como "Heitor"
        And eu seleciono a opção "inserir nova categoria"
        When eu acesso a página "nova categoria"
        And eu insiro "123"
        And eu clico em "confirmar"
        Then o sistema irá mostrar um pop-up na minha tela, informando 
        "Erro: nome inserido é inválido", retornando para a página "nova categoria"