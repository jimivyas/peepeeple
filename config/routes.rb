Rails.application.routes.draw do

    Peepeeple::Application.routes.draw do
     resources :products
    end

    def index
      @quoteunquoteyelps = Quoteunquoteyelp.all
    end

    def show
      @quoteunquoteyelp = Quoteunquoteyelp.find(params[:id])
    end

    def new
      @quoteunquoteyelp = Quoteunquoteyelp.new
    end

    def edit
      @quoteunquoteyelp = Quoteunquoteyelp.find(params[:id])
    end

    def create
      @quoteunquoteyelp = Quoteunquoteyelp.new(quoteunquoteyelp_params)

      if @quoteunquoteyelp.save
        redirect_to quoteunquoteyelps_url
      else
        render :new
      end
    end

    def update
      @quoteunquoteyelp = Quoteunquoteyelp.find(params[:id]))
  
      if @quoteunquoteyelp.update_attributes(quoteunquoteyelp_params)
        redirect_to quoteunquoteyelp_path(@quoteunquoteyelp)
      else
        render :edit
      end
    end

    def destroy
      @quoteunquoteyelp = Quoteunquoteyelp.find(params[:id])
      @quoteunquoteyelp.destroy
      redirect_to quoteunquoteyelps_path
    end

    private
    def quoteunquoteyelp_params
      params.require(:quoteunquoteyelp).permit(:name, :description, :year)
    end
  end
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
