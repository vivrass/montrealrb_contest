MontrealrbContest::Application.routes.draw do
  devise_for :users, :sign_out_via => [:delete, :get]

  resources :prizes
  resources :members
  resources :images, :only => [:show]

  match "special" => "home#special"
  match "news" => "home#news"

  root :to => 'home#index'
end
