AngryChicken::Application.routes.draw do
  root to: 'home#index'

  match '/login' => 'auth#login', via: [:get]
  match '/register' => 'auth#register', via: [:get]

  match '/u/:id' => 'users#show', via: [:get]
end
