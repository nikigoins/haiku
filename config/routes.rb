Rails.application.routes.draw do
  root 'haikus#home'

  get '/rules', to: 'haikus#rules'
<<<<<<< HEAD

  resources :haikus do
    resources :ratings
  end 
=======
  
  resources :haikus do
    resources :ratings
  end
>>>>>>> 6d43a4b41b9adefb331c2a93d6733600aa9ba219
  resources :users
end
