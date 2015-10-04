Rails.application.routes.draw do

  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/destroy'

  root 'quoteunquoteyelps#index'
     resources :quoteunquoteyelps
  end
