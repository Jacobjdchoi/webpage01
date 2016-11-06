Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    resources :products
    resources :brands
    resources :products
    resources :product_types
    get 'admin_product_types' => 'product_types#admin_index', as: 'admin_product_types'
    resources :customers
    devise_for :admins
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    resources :customers, only: [:show, :index]
    resources :articles
    resources :contacts, only: [:new, :create]
    resources :photos

    # product browser
    get 'product_browser' => 'product_browser#browser', as: 'pb'
    get 'product_browser/product_type/:id' => 'product_browser#product_types', as: 'pb_pt'
    get 'product_browser/brand/:id' => 'product_browser#brands', as: 'pb_b'
    get 'product_browser/product/:id' => 'product_browser#products', as: 'pb_p'


    # pages
    # the code right below is alternative to %get 'pages/home' => 'pages#home', as: "home"%
    root 'pages#home'
    get 'pages/about-us' => 'pages#aboutUs', as: 'about_us'
    get 'pages/a-letter-from-the-ceo' => 'pages#ceoLetter', as: 'ceo_letter'
    get 'pages/company-history' => 'pages#history', as: 'history'
    get 'pages/contact-us' => 'pages#contactUs', as: 'contact_us'
    get 'pages/careers' => 'pages#careers', as: 'careers'
    get 'pages/locations' => 'pages#locations', as: 'locations'

    # markets
    get 'markets/all-markets' => 'markets#index', as: 'allMarkets'
    get 'markets/medical' => 'markets#medical', as: 'medical'
    get 'markets/military' => 'markets#military', as: 'military'
    get 'markets/automotive' => 'markets#automotive', as: 'automotive'
    get 'markets/industrial-machinery' => 'markets#industrialMachinery', as: 'industrialMachinery'

    # heritages link
    get 'heritages/:heritage' => 'products#index', as: :heritage

    # locale redirect
    get "*path", to: "locale#not_found"
  end

  # locale redirect
  get '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  get '', to: redirect("/#{I18n.default_locale}/")
end
