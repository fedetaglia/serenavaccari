SerenaVaccari::Application.routes.draw do

  
  get ':action', to: 'pages#action'  

  root to: "pages#index"

end
