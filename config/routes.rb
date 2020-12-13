Rails.application.routes.draw do
  # api routes
  get '/api/i18n/:locale' => 'api#i18n'

  root "home#index"
end
