Rails.application.routes.draw do
  devise_for :administrators
  devise_for :students, :controllers => {:registrations => "students/registrations"}

  root to: 'photos#index'

  get '/school', to: 'schools#example'

  resources :students, :only => [:show]
  resources :schools, :only => [:show]
  resources :dining_halls do
    resources :reviews, :only => [:show, :new, :create]
  end
  resources :photos, :only => [:index, :show]
  resources :tags, :only => [:show]



end
