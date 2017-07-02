Rails.application.routes.draw do
  devise_for :users
  resources :projects

  get "pages/about"
  get "pages/contact"
  get 'programmer' => "projects#programmer"

  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
