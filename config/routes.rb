Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :customers, only: [:show, :index]
  resources :markets, only: [:show, :index]
  resources :articles, only: [:show, :index]
  resources :products, only: [:show, :index]
  resources :product_types, only: [:show, :index]
  resources :contacts, only: [:new, :create]
  
  #resources :pages
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
  #pages routes----------------------------
    #the code below is alternative to %get 'pages/home' => 'pages#home', as: "home"%
    root 'pages#home'
    get 'pages/about-us' => 'pages#aboutUs', as: "about_us"
    get 'pages/a-letter-from-the-ceo' => 'pages#ceoLetter', as: "ceo_letter"
    get 'pages/company-history' => 'pages#history', as: "history"
    get 'pages/contact-us' => 'pages#contactUs', as: "contact_us"
    get 'pages/careers' => 'pages#careers', as: "careers"
    get 'pages/locations' => 'pages#locations', as: "locations"
  
  
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
  #     #   end
end
