Rails.application.routes.draw do
  devise_for :administrators
  devise_for :students

  root to: 'photos#index'

  resources :photos, :only => [:index, :show]
  resources :students, :only => [:show]
  resources :schools do
    resources :dining_halls
  end
  resources :tags, :only => [:show]
  resources :reviews, :only => [:show, :new, :create]

end
