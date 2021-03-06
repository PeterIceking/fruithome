# -*- encoding: utf-8 -*-
Fruithome::Application.routes.draw do
  root 'fruit#index'
	get "about" => "about#index"
	
	# user
	get "login" => "user#login"
	post "login" => "user#login"
	post "register" => "user#register"
	get "register" => "user#register"
	get "user" => "user#index"
	get "logout" => "user#logout"
	get "user/information"
	get "user/security"
	get "user/change_password"
	post "user/change_password"
	get "user/update_mail_address"
	post "user/update_mail_address"
	get "user/edit_info" 
	get "user/edit_security" 
	post "user/update_info"
	post "user/update_security"
	
	# account
	
	# fruit
  get "index" => "fruit#index"
  get "search" => "fruit#search"
	get "show" => "fruit#show"
	post "add_to_cart" => "fruit#add_to_cart"
  post "fruit/collect"
	
	# order
  get "order/index" => "order#index"
  get "order/show" => "order#show"
  get "order/destroy"
  post "order/order_done"
	get "order/pay" => "order#pay"
	get "order/collection" => "order#collection"
	get "order/pay_success"
	get "order/collection"
	post "order/cancel_collection"
	# get "order/cart" => "order#cart"
	
	# cart
	get "cart/show" => "cart#show"
  post "cart/destroy"
	
	# admin,fruit_type
  get "admin/fruit_type/new" => "admin/fruit_type#new"
  # get "admin/fruit_type/create" => "admin/fruit_type#create"
  post "admin/fruit_type/create" => "admin/fruit_type#create"
  get "admin/fruit_type/edit"
  post "admin/fruit_type/update"
  post "admin/fruit_type/destroy"
  get "admin/fruit_type/show"
  get "admin/fruit_type" => "admin/fruit_type#index"
	
	# admin,origin_place
  get "admin/origin_place/new" => "admin/origin_place#new"
  # get "admin/origin_place/create" => "admin/origin_place#create"
  post "admin/origin_place/create" => "admin/origin_place#create"
  get "admin/origin_place/edit"
  post "admin/origin_place/update"
  post "admin/origin_place/destroy"
  get "admin/origin_place/show"
  get "admin/origin_place" => "admin/origin_place#index"
	
	# admin,fruit
  get "admin/fruit/new" => "admin/fruit#new"
  # get "admin/fruit/create" => "admin/fruit#create"
  post "admin/fruit/create" => "admin/fruit#create"
  get "admin/fruit/edit"
  post "admin/fruit/update"
  post "admin/fruit/destroy"
  get "admin/fruit/show"
  get "admin/fruit" => "admin/fruit#index"
	
	# admin,order
	get "admin/order/new" => "admin/order#new"
  post "admin/order/create" => "admin/order#create"
  get "admin/order/edit"
  post "admin/order/update"
  post "admin/order/destroy"
  get "admin/order/show"
  get "admin/order/history"
  get "admin/order" => "admin/order#index"
	
	# admin,user
	get "admin/login" => "admin/user#login"
	post "admin/login" => "admin/user#login"
	get "admin/logout" => "admin/user#logout"
	get "admin/user/index"
	get "admin/user/information"
	get "admin/user/edit_info"
	post "admin/user/update_info"
	get "admin/user/security"
	get "admin/user/change_password"
	post "admin/user/change_password"
	post "admin/user/update_mail_address"
	get "admin/user/edit_security" 
	post "admin/user/update_security"
	
	# admin,member
  get "admin/member/new" => "admin/member#new"
  post "admin/member/create" => "admin/member#create"
  get "admin/member" => "admin/member#index"
  get "admin/member/banned"
  get "admin/member/edit"
  post "admin/member/update"
  post "admin/member/destroy"
  get "admin/member/show"
	
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

