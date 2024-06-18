class CoursesController < ApplicationController
    def front_end
        @list_start = ["Estrutura básica de uma página web", "Tags principais", "Atributos de tags", "Semântica HTML5", "Formulários", "Seletores e combinadores", "Propriedades e valores", "Box Model", "Flexbox e Grid", "Media Queries"]
        @list_professional = ["Sintaxe básica", "Funções", "Manipulação do DOM", "Eventos", "ECMAScript 6", "APIs do navegador", "Comandos básicos do Git", "Fluxo de trabalho", "Uso do GitHub"]
        @list_business = ["Princípios básicos de design", "Ferramentas de design", "Usabilidade e acessibilidade", "Bibliotecas de JavaScript", "Frameworks de CSS", "Frameworks de JavaScript", "Hospedagem de sites estáticos", "Noções básicas de deploy"]
        @course = "Front-End"
        @phrase = "A área de desenvolvimento web front-end é a ponte que une os mundos do design e da programação. O profissional desenvolvedor front-end é o responsável por colocar em prática, através de códigos, o design de um site ou interface. Enquanto o web design projeta o visual de um site, o desenvolvimento front-end implementa esse design através de códigos, como HTML, CSS e JavaScript. Ou seja, é o front-end que coloca “para funcionar” toda a parte visual de uma interface, como a página de um site ou de um aplicativo."
    end

    def  back_end
        @list_start = []
        @list_professional = []
        @list_business = []
        @course = "Back-End"
        @phrase = "Um desenvolvedor back-end é um profissional de tecnologia da informação responsável pela criação e manutenção da parte \"invisível\" de um aplicativo ou site, que lida com o processamento de dados, lógica de negócios e interações com o servidor. Eles são fundamentais para garantir que os sistemas funcionem de maneira eficiente e segura. Aqui estão as principais responsabilidades e tecnologias associadas a um desenvolvedor back-end:"
    end

    def game_dev
        @list_start = []
        @list_professional = []
        @list_business = []
        @course = "Game Developer"
        @phrase = "Profissionais dessa área têm a função de criar e desenvolver jogos eletrônicos para computadores, celulares, tablets ou consoles de vídeo game, além de supervisionar o andamento dos processos que envolvem a criação de um jogo."
    end

    def data_cience
        @list_start = []
        @list_professional = []
        @list_business = []
        @course = "Ciência de Dados"
        @phrase = "Não tem frase"
    end

    def full_stack
        @list_start = []
        @list_professional = []
        @list_business = []
        @course = "Full-Stack"
        @phrase = "O desenvolvedor full stack é aquele profissional multitarefa que cobre várias frentes na área de TI, pois pode trabalhar com diferentes linguagens. Habilitado a oferecer um suporte completo, esse especialista está muito valorizado no mercado."
    end
end
