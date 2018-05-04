Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'home', to:'pages#welcome'
  get 'about', to:'pages#about'
  
  # Contact Pages
  get 'contact', to: 'contacts#contact'
  get 'email_confirm', to: 'contacts#email_confirm'
  get 'send_email', to: 'contacts#send_email'
  
  get 'services', to:'pages#services'
  get 'privacy', to:'pages#privacy'
  get 'terms', to:'pages#terms'
  get 'disclaimer', to:'pages#disclaimer'
  get 'return_policy', to:'pages#return_policy'
  get 'pricing', to:'pages#pricing'
  get 'meet_michael', to:'pages#meet_michael'
  root 'pages#welcome'
end
