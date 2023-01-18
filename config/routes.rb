Rails.application.routes.draw do
  resources :collections
  resources :items
  resources :users
  resources :categories

  resources :collect_proposals, except: %i[edit update] do
    member do
      post :accept
      post :reject
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
