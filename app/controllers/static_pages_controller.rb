class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:curso]
  def home
  end

  def about
  end

  def curso
    @courses = [
      { nome: 'front-end', 
        descricao: 'A área de desenvolvimento web front-end é a ponte que une os mundos do design e da programação. O profissional desenvolvedor front-end é o responsável por colocar em prática, através de códigos, o design de um site ou interface. ',
      },
      { nome: 'back-end', 
        descricao: 'Um desenvolvedor back-end é um profissional de tecnologia da informação responsável pela criação e manutenção da parte "invisível" de um aplicativo ou site, que lida com o processamento de dados, lógica de negócios e interações com o servidor.',
      },
      { nome: 'full-stack',
        descricao: 'O desenvolvedor full stack é aquele profissional multitarefa que cobre várias frentes na área de TI, pois pode trabalhar com diferentes linguagens. Habilitado a oferecer um suporte completo, esse especialista está muito valorizado no mercado.', 
      }
    ]
  end

  def show
    @course = params[:nome]
    @detalhes_curso = detalhes_do_curso(@course)
  end

  private

  def detalhes_do_curso(curso)
    detalhes = {
      'front-end' => {
        list_start: ["Estrutura básica de uma página web", "Tags principais", "Atributos de tags", "Semântica HTML5", "Formulários", "Seletores e combinadores", "Propriedades e valores", "Box Model", "Flexbox e Grid", "Media Queries"],
        list_professional: ["Sintaxe básica", "Funções", "Manipulação do DOM", "Eventos", "ECMAScript 6", "APIs do navegador", "Comandos básicos do Git", "Fluxo de trabalho", "Uso do GitHub"],
        list_business: ["Princípios básicos de design", "Ferramentas de design", "Usabilidade e acessibilidade", "Bibliotecas de JavaScript", "Frameworks de CSS", "Frameworks de JavaScript", "Hospedagem de sites estáticos", "Noções básicas de deploy"]
      },
      'back-end' => {
        list_start: [],
        list_professional: [],
        list_business: []
      },
      'full-stack' => {
        list_start: [],
        list_professional: [],
        list_business: []
      }
    }
    detalhes[curso]
  end
end
