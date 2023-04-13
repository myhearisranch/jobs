Rails.application.routes.draw do
  root to: 'homes#top'
  get 'jobs' => 'jobs#index'
  get 'calenders' => 'users#calender'
  post 'jobs' => 'jobs#create'
  
  devise_for :users
  resources :users, only:[:index, :show, :update]
  resources :shifts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
