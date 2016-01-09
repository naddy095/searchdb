Playgrounds::Application.routes.draw do
  # devise_for :users
  resources :playgrounds do
   collection {
    get 'update_house_status'
    get 'authenticate_house_registration'
    get 'update_spam'
    get :autocomplete_playground_address
   
  }
 
  end

# facebook integration routes
# get 'auth/:provider', to: 'sessions#create'
# get 'auth/failure', to: redirect('/')
get 'signout', to: 'sessions#destroy', as: 'signout'
   
get  '/playgrounds/:id/spam'  =>  "playgrounds#spam"
get  '/playgrounds/:id/show'  =>  "playgrounds#show_on_map"
match 'admin' => 'playgrounds#admin', as: :admin, via: [:get, :post]

devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

# get "/users/sign_in" => 'omniauth_callbacks#create'
  
root to: 'playgrounds#index'

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
