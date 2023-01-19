Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"
  get 'home/index'
  get 'contacts'=>'contacts#new'

  resource :contacts, only:[:create]
  resources :articles do
  resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
