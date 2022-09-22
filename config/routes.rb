Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks"}
  root 'static_public#landing_page'
  # get 'static_public/landing_page'
  get 'privacy', to: 'static_public#privacy'
  get 'term', to: 'static_public#term'
end
