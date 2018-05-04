Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'home', to:'pages#welcome'
  get 'about', to:'pages#about'
  
  # Contact Pages
  get 'contact', to: 'contacts#contact'
  get 'email_confirm', to: 'contacts#email_confirm'
  get 'send_email', to: 'contacts#send_email'
  
  # Services
  get 'services', to:'services#services'
  get 'social_media_marketing', to:'services#social_advertising'
  get 'sales_funnels', to:'services#sales_funnels'
  get 'seo_marketing', to:'services#seo_marketing'
  
  get 'privacy', to:'pages#privacy'
  get 'terms', to:'pages#terms'
  get 'disclaimer', to:'pages#disclaimer'
  get 'return_policy', to:'pages#return_policy'
  get 'pricing', to:'pages#pricing'
  get 'meet_michael', to:'pages#meet_michael'
  root 'pages#welcome'
end
