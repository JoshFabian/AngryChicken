AngryChicken::Application.routes.draw do
  root to: 'home#index'

  match '/sign-in' => 'auth#sign_in', via: [:get]
end
