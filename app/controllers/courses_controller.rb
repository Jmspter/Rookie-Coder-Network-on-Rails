class CoursesController < ApplicationController
    def show
        @curso_nome = params[:curso_nome]
        @modulo_nome = params[:modulo_nome]
        @modulo = detalhes_do_modulo(@curso_nome, @modulo_nome)
    end

    private
    def detalhes_do_modulo(curso_nome, modulo_nome)
        modulos = {
          'front-end' => {
            'html' => { titulo: 'HTML Básico', descricao: 'Introdução ao HTML.' },
            'css' => { titulo: 'CSS Básico', descricao: 'Introdução ao CSS.' },
            'javascript' => { titulo: 'JavaScript Básico', descricao: 'Introdução ao JavaScript.' }
          },
          'back-end' => {
            'ruby' => { titulo: 'Ruby Básico', descricao: 'Introdução ao Ruby.' },
            'rails' => { titulo: 'Rails Básico', descricao: 'Introdução ao Rails.' },
            'node' => { titulo: 'Node.js Básico', descricao: 'Introdução ao Node.js.' }
          },
          'full-stack' => {
            'frontend' => { titulo: 'Front-end Completo', descricao: 'Curso completo de Front-end.' },
            'backend' => { titulo: 'Back-end Completo', descricao: 'Curso completo de Back-end.' },
            'devops' => { titulo: 'DevOps', descricao: 'Introdução ao DevOps.' }
          }
        }
        modulos.dig(curso_nome, modulo_nome)
    end
end
