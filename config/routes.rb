Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'cocktail/index'
  get 'cocktail/show'
  get 'cocktail/new'
  get 'cocktail/create'
  resources :cocktails, shallow: true do
    resources :doses, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
