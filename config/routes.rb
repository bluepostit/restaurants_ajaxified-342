Rails.application.routes.draw do
  root to: 'pages#home'
  resources :restaurants, only: %i[show index destroy] do
    # POST /restaurants/32/reviews
    resources :reviews, only: :create
  end
end
