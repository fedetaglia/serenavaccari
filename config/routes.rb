SerenaVaccari::Application.routes.draw do

  
  resources :projects

  get ':action', to: 'pages#action'  

  root to: "pages#index"

end
