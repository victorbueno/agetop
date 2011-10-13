Agetop::Application.routes.draw do
  get "equipments/spots"
  get "equipments/reviews"
  get "site/defesa_previa"
  get "site/print_defesa_previa"
  post "site/print_defesa_previa"

  resources :pages
  
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => "site#index"
end
