Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'

  get '/about', to: "static_pages#about"
  get '/cursos', to: "static_pages#curso"

  get 'cursos/front_end', to: "courses#front_end"
  get 'cursos/back_end', to: "courses#back_end"
  get 'cursos/game_dev', to: "courses#game_dev"
  get 'cursos/data_cience', to: "courses#data_cience"
  get 'cursos/full_stack', to: "courses#full_stack"
end
