Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the root path route ("/")
  
  root to: "main#index"

  #resources :books ESTO LO PONGO DESP PQQ ME DA PENDIENTE BORRARLO

  get "/books", to: "books#index"
  get "books/new", to: "books#new", as: :new_book
  get "books/:id/edit", to: "books#edit", as: :edit_book
  patch "books/:id", to: "books#update"
  delete "books/:id", to: "books#destroy"
  get "books/:id", to: "books#show" , as: :book
  post "/books", to: "books#create", as: :saved_books

  
  get "/stores", to: "stores#index"
  get "stores/new", to: "stores#new", as: :new_store
  get "stores/:id/edit", to: "stores#edit", as: :edit_store
  patch "stores/:id", to: "stores#update"
  delete "stores/:id", to: "stores#destroy"
  get "stores/:id", to: "stores#show", as: :store
  post "stores", to: "stores#create", as: :saved_stores

end
