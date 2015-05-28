Rails.application.routes.draw do
  resources :swagger, only: :index

  namespace :api do
    namespace :v1 do
      resources :users
      resources :user_sessions do
        collection do
          get  'complete' => "user_sessions#complete"
        end
      end
      post 'users/add' => "users#add"
    end
  end

  # namespace :api, path: '' do
  #   mount API => '/'
  # end
end
