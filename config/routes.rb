Rails.application.routes.draw do
  get 'contact/index', as: :contact

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  devise_for :user do
    get "/login" => "devise/sessions#new", :as => :new_user_session
  end




  root 'categories#index'
end