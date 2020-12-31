Rails.application.routes.draw do
  resources :help_records
  resources :help_contents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/', to: 'top#index', as: 'top'
end
