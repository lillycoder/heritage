Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index' 
  resources :static_pages, only: :index 
  resources :feedbacks, only: [:create, :new]
  resources :grams, only: [:new, :create, :show, :updaate, :edit, :destroy, :index]
  resources :townhouses, only: [:index, :show, :edit, :update] 
  namespace :owner do
    resources :townhouses, only: [:new, :create, :show, :edit, :update, :show, :destroy] do
      resources :tenants, only: [:new, :create, :show, :update]
    end
  end
end
