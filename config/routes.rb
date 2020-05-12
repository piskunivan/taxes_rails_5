Rails.application.routes.draw do



  get 'home/about_us'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

 root :to => "home#about_us"
  get "home/contacts"

 resources :room_messages
 resources :rooms
resources :payments



end
