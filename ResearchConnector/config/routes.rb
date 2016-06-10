Rails.application.routes.draw do

  devise_for :users
  root 'homes#index'

  # Routes for the HomePage alias Mission resource:
  # READ
  get "/homes", :controller => "homes", :action => "index"
  get "/homes/:id", :controller => "homes", :action => "show"
  #------------------------------

  # Routes for the Search resource:
  # READ
  get "/searchs", :controller => "searchs", :action => "index"
  get "/searchs/:id", :controller => "searchs", :action => "show"
  #------------------------------






  # Routes for the Africanctrytable resource:
  # CREATE
  get "/africanctrytables/new", :controller => "africanctrytables", :action => "new"
  post "/create_africanctrytable", :controller => "africanctrytables", :action => "create"

  # READ
  get "/africanctrytables", :controller => "africanctrytables", :action => "index"
  get "/africanctrytables/:id", :controller => "africanctrytables", :action => "show"

  # UPDATE
  get "/africanctrytables/:id/edit", :controller => "africanctrytables", :action => "edit"
  post "/update_africanctrytable/:id", :controller => "africanctrytables", :action => "update"

  # DELETE
  get "/delete_africanctrytable/:id", :controller => "africanctrytables", :action => "destroy"
  #------------------------------

  # Routes for the Worldctrytable resource:
  # CREATE
  get "/worldctrytables/new", :controller => "worldctrytables", :action => "new"
  post "/create_worldctrytable", :controller => "worldctrytables", :action => "create"

  # READ
  get "/worldctrytables", :controller => "worldctrytables", :action => "index"
  get "/worldctrytables/:id", :controller => "worldctrytables", :action => "show"

  # UPDATE
  get "/worldctrytables/:id/edit", :controller => "worldctrytables", :action => "edit"
  post "/update_worldctrytable/:id", :controller => "worldctrytables", :action => "update"

  # DELETE
  get "/delete_worldctrytable/:id", :controller => "worldctrytables", :action => "destroy"
  #------------------------------

  # Routes for the Granttable resource:
  # CREATE
  get "/granttables/new", :controller => "granttables", :action => "new"
  post "/create_granttable", :controller => "granttables", :action => "create"

  # READ
  get "/granttables", :controller => "granttables", :action => "index"
  get "/granttables/:id", :controller => "granttables", :action => "show"

  # UPDATE
  get "/granttables/:id/edit", :controller => "granttables", :action => "edit"
  post "/update_granttable/:id", :controller => "granttables", :action => "update"

  # DELETE
  get "/delete_granttable/:id", :controller => "granttables", :action => "destroy"
  #------------------------------

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
