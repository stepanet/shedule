Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dayweeks#index'
  get 'about' => 'pages#about'
  get 'temp' => 'pages#index_templates'


  resources :dayweeks
  resources :lessons
  resources :shedulers
end
