Rails.application.routes.draw do

	root 'quoteunquoteyelps#index'

	resources :quoteunquoteyelps do
		resources :reviews, only: [:show, :create, :destroy]
	end
end
