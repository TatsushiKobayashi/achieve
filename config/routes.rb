Rails.application.routes.draw do
  devise_for :users
  get 'top/index'

  get 'contacts' => 'contacts#new'
  resources :contacts, only: [:index, :new, :create, :edit, :update ,:destroy] do
    collection do
      post :confirm
    end
  end
  
  resources :blogs, only: [:index, :new, :create, :edit, :update ,:destroy] do
    collection do
      post :confirm
    end
  end

  root 'top#index'
end