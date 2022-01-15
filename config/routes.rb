Rails.application.routes.draw do
  get 'experience/new'
  get 'user/new'
  get 'user/create'
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'signup'  => 'user#new'
  post   'signup'  => 'user#create'
  get    'add_project' => 'project#new'

  resources :profiles , only: [:update]
  resources :profiles , only: [:update, :show]
  resources :educations , only: [:new]
end
