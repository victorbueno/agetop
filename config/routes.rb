Agetop::Application.routes.draw do
  resources :pages
  
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => "site#index"
end
