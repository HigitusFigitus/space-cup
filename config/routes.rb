Rails.application.routes.draw do
  get "apod/index"

  root "apod#index"
end
