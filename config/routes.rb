WebhookSqsRouter::Application.routes.draw do
  root 'application#index'

  match "/", via: [:post], to: "application#queue"
end
