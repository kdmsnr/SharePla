SharePla::Application.routes.draw do
  root 'top#index'
  match '/newplan'             , to: 'newplan#index'        , via: 'get'
  match '/newplan/add'         , to: 'newplan#add'          , via: 'post'
  match '/newplan/save'        , to: 'newplan#save'         , via: 'post'
  match '/newplan/search-hotel', to: 'newplan#search_hotel' , via: 'post'
  match '/plan/:id'            , to: 'top#show'             , via: 'get', as: :plan
  match '/pdf/sample'          , to: 'documents#sample'     , via: 'get'
  match '/pdf/string'          , to: 'documents#string'     , via: 'post'
  match '/static/'             , to: 'top#static'           , via: 'get'
  match '/pdf'                 , to: 'documents#create'     , via: 'post'

  #get "hello/to/:name" => "hello#to"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'newplan#index'

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
