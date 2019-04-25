RailsCategory::Engine.routes.draw do
  resources :categories, only: [:index]
end
