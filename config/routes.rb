Agetop::Application.routes.draw do
  get "posts/index"

  get "posts/show"

  get "spots/index"

  get "equipments/reviews"
  get "site/defesa_previa"
  get "site/recurso"
  get "site/print_defesa_previa"
  post "site/print_defesa_previa"
  post "site/print_recurso"

  resources :pages, :posts
  resources :spots
  
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => "site#index"
end
