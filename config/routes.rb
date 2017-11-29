Rails.application.routes.draw do
  resources :tweeets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweeets#index"
end
