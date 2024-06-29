Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'

  get '/about', to: "static_pages#about"
  get '/cursos', to: "static_pages#curso"

  get '/cursos/:nome', to: "static_pages#show", as: 'course'
  get 'cursos/:curso_nome/modulos/:modulo_nome', to: 'courses#show', as: 'curso_modulo'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end  
end
