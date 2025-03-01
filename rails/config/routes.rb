# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :todos, only: %i[index create show update destroy]
    end
  end

  resource :test, only: :show
end
