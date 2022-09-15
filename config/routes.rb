Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  # Defines the root path route ("/")
  # root "articles#index"
  delete '/restaurants/:id', to: 'restaurants#destroy', as: 'delete_restaurant'
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end

end
