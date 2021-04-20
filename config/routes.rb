Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show ] do
    resources :reviews, only: [ :new, :create, :index, :show ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
