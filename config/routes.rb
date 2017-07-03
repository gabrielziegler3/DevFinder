Rails.application.routes.draw do
    resources :projects do
        collection do
            get 'search'
        end
        resources :applies, only: [:new, :create]
    end
    devise_for :users

  get "pages/about"
  get "pages/contact"
  get 'programmer' => "projects#programmer"
  get 'employer' => "projects#employer"
  get 'interested_projects' => "applies#interested_projects"
  get 'employees' => "applies#employees"

  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
