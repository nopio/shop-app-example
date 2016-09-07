Rails.application.routes.draw do
  root "products#index"

  resources :products do
    collection do
      post "lock"
    end
  end
end
