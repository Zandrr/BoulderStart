SampleApp::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "providers/index"
  get "provider/index"
  get "entity/index"
  get "entity/show"
  get "funding/index"
  resources :positions
  devise_for :users, :controllers => {:registrations => "registrations"}

 

  resources :blogs

  resources :events

  resources :spaces

  resources :student_groups

  resources :departments

  resources :jobs


  get "courses/new"
  get "courses/index"
  get "spaces/pivotdesk"
  root 'static_pages#home'
  match '/providers', to: 'providers#index', via: 'get'
  match '/funding', to: 'funding#index', via: 'get'
  match 'entity', to: 'entity#index', via: 'get'
  match '/resources',    to: 'static_pages#resources', via: 'get'
  match '/contact', to: 'static_pages#contactus', via: 'get'
  match '/campus',    to: 'static_pages#campus', via: 'get'
  match '/courses', to: 'courses#index', via:'get'
  match '/OffCampus', to: 'static_pages#OffCampus', via: 'get'
  match '/startups2students', to: 'static_pages#startups2students', via: 'get'
  match '/calendar', to: 'events#embeddedCal', via: 'get'
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