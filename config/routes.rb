Rails.application.routes.draw do
  devise_for :administrators
  devise_for :students

  root to: 'photos#index'

  resources :photos, :only => [:index]

end
