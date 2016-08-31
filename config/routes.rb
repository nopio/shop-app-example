Rails.application.routes.draw do
  resources :products do
    collection do
      post 'update_total_cost'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
