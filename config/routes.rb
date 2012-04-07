MontrealrbContest::Application.routes.draw do
  resources :prizes, :only => [:index, :new, :create]
  resources :members, :only => [:index, :new, :create]
  resources :images, :only => [:show]

  match "special" => "home#special"

  root :to => 'home#index'
end
