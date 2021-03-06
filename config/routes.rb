SerenaVaccari::Application.routes.draw do


  devise_for :users

  devise_scope :user do
    get '/serry', to: "devise/sessions#new"
  end

  root to: "projects#index"

  resources :projects do
    get 'carousel', on: :member
    resources :photos
  end

  get ':action', to: 'pages#action'

end
