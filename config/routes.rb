Rails.application.routes.draw do
  root 'home#index'
  get '/new', to: 'home#index'
  get '/show', to: 'home#index'
  get '/about', to: 'home#index'
  get '/contact', to: 'home#index'

  namespace :api, format: 'json' do
    resources :anger_logs, only: %w[index show create update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
