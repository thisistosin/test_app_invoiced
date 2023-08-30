Rails.application.routes.draw do
  devise_for :users #I'm not sure if I have seen this format
  namespace :v1 do
    resources :contacts
    resource :sessions, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end