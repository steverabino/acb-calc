Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :medicines

  root 'welcome#index'

  get "/pages/:page" => "pages#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
