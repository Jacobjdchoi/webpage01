Rails.application.routes.draw do

  resources :products
  resources :brands
  resources :products
  resources :product_types
  resources :customers
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :customers, only: [:show, :index]
  resources :articles
  resources :contacts, only: [:new, :create]
  resources :photos

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


end
