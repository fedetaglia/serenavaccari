SerenaVaccari::Application.routes.draw do
  

  devise_for :users
  
  devise_scope :user do
    get '/serry', to: "devise/sessions#new"
    get "/users/sign_up",  :to => "pages#index"
  end

  root to: "pages#index", layout: :landing
  
  resources :projects do
    resources :photos
  end

  get ':action', to: 'pages#action'  

end
