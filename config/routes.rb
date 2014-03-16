# -*- encoding: utf-8 -*-
Fruithome::Application.routes.draw do
  root 'fruit#index'
	get "about" => "about#index"
	post "register" => "user#register"
	get "register" => "user#register"
	
	# fruit
  get "index" => "fruit#index"
  get "search" => "fruit#search"
	get "show" => "fruit#show"
	
	# admin,fruit_type
  get "admin/fruit_type/new" => "admin/fruit_type#new"
  # get "admin/fruit_type/create" => "admin/fruit_type#create"
  post "admin/fruit_type/create" => "admin/fruit_type#create"
  get "admin/fruit_type/edit"
  post "admin/fruit_type/update"
  post "admin/fruit_type/destroy"
  get "admin/fruit_type/show"
  get "admin/fruit_type/index"
	
	# admin,fruit
  get "admin/fruit/new" => "admin/fruit#new"
  # get "admin/fruit/create" => "admin/fruit#create"
  post "admin/fruit/create" => "admin/fruit#create"
  get "admin/fruit/edit"
  post "admin/fruit/update"
  post "admin/fruit/destroy"
  get "admin/fruit/show"
  get "admin/fruit/index"
	
	# admin,order
	get "admin/order/new" => "admin/order#new"
  post "admin/order/create" => "admin/order#create"
  get "admin/order/edit"
  post "admin/order/update"
  post "admin/order/destroy"
  get "admin/order/show"
  get "admin/order/index"
	# namespace :admin do
		# # Directs /admin/products/* to Admin::ProductsController
		# # (app/controllers/admin/products_controller.rb)
		# resources :order
	# end
  
  
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
