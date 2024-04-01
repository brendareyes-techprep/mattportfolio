Rails.application.routes.draw do
  resources :pages

  root "pages#index"
  get "/about", to: "pages#about"
end
