Rails.application.routes.draw do

  devise_for :users

  authenticated do
   root :to => 'jobs#index', as: :authenticated
  end

  root to: 'jobs#homepage'

  resources "jobs"

end
