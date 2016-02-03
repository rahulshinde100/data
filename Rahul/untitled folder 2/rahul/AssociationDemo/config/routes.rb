AssociationDemo::Application.routes.draw do
  get "studentpages/index"
  get "departmentpages/index"
  get "coursepages/index"

  get "studentpages/new"
  post "studentpages/create"
  get "studentpages/edit"
  get "studentpages/show"
  get "studentpages/destroy"
  get "studentpages/delete"
  get "studentpages/find"
  post "studentpages/search"
  get "studentpages/success"
  get "studentpages/fail"

  get "departmentpages/new"
  post "departmentpages/create"
  get "departmentpages/edit"
  get "departmentpages/show"
  get "departmentpages/destroy"
  get "departmentpages/delete"
  get "departmentpages/find"
  post "departmentpages/search"
  get "departmentpages/success"
  get "departmentpages/fail"
  post "departmentpages/modify"

  get "coursepages/new"
  post "coursepages/create"
  get "coursepages/edit"
  get "coursepages/show"
  get "coursepages/destroy"
  get "coursepages/delete"
  get "coursepages/find"
  post "coursepages/search"
  get "coursepages/success"
  get "coursepages/fail"
  get "home/index"


 # resources :studentpages
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
