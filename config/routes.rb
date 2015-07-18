SerenaVaccari::Application.routes.draw do


  devise_for :users

  devise_scope :user do
    get '/serry', to: "devise/sessions#new"
    get "/users/sign_up",  :to => "pages#index"
  end

  root to: "projects#index", layout: :landing

  resources :projects do
    get 'carousel', on: :member
    resources :photos
  end

  get ':action', to: 'pages#action'

end
