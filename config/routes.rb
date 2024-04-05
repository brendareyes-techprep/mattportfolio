Rails.application.routes.draw do
  resources :pages

  root "pages#landing"
  get '/work', to: 'pages#work'
  get '/about', to: 'pages#about'
end
