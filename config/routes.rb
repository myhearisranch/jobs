Rails.application.routes.draw do
  root to: 'homes#top'
  get 'jobs' => 'jobs#index'
  post 'jobs' => 'jobs#create'
  devise_for :users
  resources :users, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
