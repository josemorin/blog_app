Rails.application.routes.draw do
  get "/articles", to: "articles#index"

  root 'main#index'
end
