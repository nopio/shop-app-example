Rails.application.routes.draw do
  resources :products do
    collection do
      post "lock"
    end
  end
end
