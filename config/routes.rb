MontrealrbContest::Application.routes.draw do
  devise_for :users, :sign_out_via => [:delete, :get]

  resources :prizes, :only => [:index]
  resources :members, :only => [:index, :new, :create]
  resources :images, :only => [:show]

  match "special" => "home#special"
  match "news" => "home#news"

  root :to => 'home#index'
end
