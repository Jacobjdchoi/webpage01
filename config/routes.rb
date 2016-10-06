Rails.application.routes.draw do
  resources :customers
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :customers, only: [:show, :index]
  resources :articles
  resources :contacts, only: [:new, :create]
  
  #pages routes----------------------------
    #the code below is alternative to %get 'pages/home' => 'pages#home', as: "home"%
    root 'pages#home'
    get 'pages/about-us' => 'pages#aboutUs', as: 'about_us'
    get 'pages/a-letter-from-the-ceo' => 'pages#ceoLetter', as: 'ceo_letter'
    get 'pages/company-history' => 'pages#history', as: 'history'
    get 'pages/contact-us' => 'pages#contactUs', as: 'contact_us'
    get 'pages/careers' => 'pages#careers', as: 'careers'
    get 'pages/locations' => 'pages#locations', as: 'locations'
    
  #markets
    get 'markets/all-markets' => 'markets#index', as: 'allMarkets'
    get 'markets/medical' => 'markets#medical', as: 'medical'
    get 'markets/military' => 'markets#military', as: 'military'
    get 'markets/automotive' => 'markets#automotive', as: 'automotive'
    get 'markets/industrial-machinery' => 'markets#industrialMachinery', as: 'industrialMachinery'
    
  #product
    get 'products/all-products' => 'products#index', as: 'allProducts'
    get 'products/cables' => 'products#cables', as: 'cables'
    get 'products/connectors' => 'products#connectors', as: 'connectors'
    get 'products/terminals' => 'products#terminals', as: 'terminals'
    get 'products/motion-control-components' => 'products#mccs', as: 'mccs'
    
  
end
