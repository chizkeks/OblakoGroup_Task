Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :projects, shallow: true
  root to: 'projects#index'
  #post 'projects', to: 'projects#create'
end
