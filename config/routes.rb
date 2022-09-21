Rails.application.routes.draw do
  devise_for :users
  root 'static_public#landing_page'
  # get 'static_public/landing_page'
  get 'privacy', to: 'static_public#privacy'
  get 'term', to: 'static_public#term'
end
