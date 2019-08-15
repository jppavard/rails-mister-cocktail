Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: %i[show index new create destroy] do
    # member do
      resources :doses, only: %i[new create]
    # end
  end

  resources :doses, only: %i[destroy]

  resources :ingredients, only: %i[show index new create destroy]
end
