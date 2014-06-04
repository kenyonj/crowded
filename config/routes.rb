Rails.application.routes.draw do
  root "homes#show"

  resource :position, only: [:create]
end
