require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => "/monitor"

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
