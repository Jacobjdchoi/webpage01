Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    resources :brands
    resources :product_types
    get 'admin_product_types' => 'product_types#admin_index', as: 'admin_product_types'
    resources :customers
    devise_for :admins
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    resources :customers
    get 'customers_admin' => 'customers#admin_index', as: 'admin_customers'
    get 'customer_admin' => 'customers#admin_show', ad: 'admin_customer'
    resources :articles
    resources :photos
    resources :products

    #contact
    get 'contacts/new' => 'contacts#new', as: 'new_contact'
    post 'contacts' => 'contacts#create', as: 'contacts'
    # product browser
    get 'product_browser' => 'product_browser#browser', as: 'pb'
    get 'product_browser/product_type/:id' => 'product_browser#product_types', as: 'pb_pt'
    get 'product_browser/brand/:id' => 'product_browser#brands', as: 'pb_b'



    # pages
    # the code right below is alternative to %get 'pages/home' => 'pages#home', as: "home"%
    root 'pages#home'
    get 'pages/about-us' => 'pages#aboutUs', as: 'about_us'
    get 'pages/a-letter-from-the-ceo' => 'pages#ceoLetter', as: 'ceo_letter'
    get 'pages/company-history' => 'pages#history', as: 'history'
    get 'pages/contact-us' => 'pages#contactUs', as: 'contact_us'
    get 'pages/careers' => 'pages#careers', as: 'careers'
    get 'pages/locations' => 'pages#locations', as: 'locations'
    get 'pages/downloads' => 'pages#downloads', as: 'downloads'

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
