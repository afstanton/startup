# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'welcome#index'

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  # Switch this to admin once auth is in place
  mount Sidekiq::Web => '/sidekiq' if Rails.env.development?
end
