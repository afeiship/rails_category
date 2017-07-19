Rails.application.routes.draw do

  namespace :rails_category do
    resources :categories
  end

end