Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :medicines

  root 'welcome#index'

  get "/pages/:page" => "pages#show"

  if Rails.env.production?
    offline = Rack::Offline.configure :cache_interval => 120 do
      cache ActionController::Base.helpers.asset_path("application.css")
      cache ActionController::Base.helpers.asset_path("application.js")
      cache ActionController::Base.helpers.asset_path("proximanova-regular.otf")
      cache ActionController::Base.helpers.image_path("grandma.jpg")
      cache ActionController::Base.helpers.image_path("icon.png")
      cache ActionController::Base.helpers.image_path("logo.png")

      # cache other assets
      network "*"
    end
    get "/application.manifest" => offline
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
