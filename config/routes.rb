Rails.application.routes.draw do
  resources :articles
end
root to: 'articles#index'
