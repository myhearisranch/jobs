Rails.application.routes.draw do
  root to: 'homes#top'
  resources :jobs do 
    resource :favorites, only: [:create, :destroy]
  end
  
  devise_for :users, skip: [:registrations]
  resources :users, only:[:index, :show, :update, :edit]
  resources :shifts
  resources :rooms

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
