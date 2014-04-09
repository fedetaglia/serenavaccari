SerenaVaccari::Application.routes.draw do
  
  

  devise_scope :user do
    get "/users/sign_up",  :to => "pages#index"
    get '/serry', to: "devise/sessions#new"
  end

  devise_for :users

  root to: "pages#index", layout: :landing
  
  resources :projects do
    resources :photos
  end

  get ':action', to: 'pages#action'  

end
