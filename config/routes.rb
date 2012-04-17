MontrealrbContest::Application.routes.draw do
  devise_for :users, :only => [:sessions]

  resources :prizes, :only => [:index, :new, :create]
  resources :members, :only => [:index, :new, :create]
  resources :images, :only => [:show]

  match "special" => "home#special"
  match "news" => "home#news"

  root :to => 'home#index'
end
