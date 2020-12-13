Rails.application.routes.draw do
  namespace :admin do
    root 'dashboard#index'
  end

  # api routes
  get '/api/i18n/:locale' => 'api#i18n'

  root "home#index"
end
