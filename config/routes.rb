Rails.application.routes.draw do
  root 'posts#show_all'
  resources :users, shallow: true do    
    resources :posts, shallow: true do
      resources :comments
    end
  end
end
