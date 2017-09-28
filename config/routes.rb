Rails.application.routes.draw do
    root 'haikus#home'

    get '/rules', to: 'haikus#rules'
    
    # Not the rails way.  Should be resources :haikus
    get '/haikus', to: 'haikus#index'
    get '/haikus/new', to: 'haikus#new'
    get '/haikus/:id', to: 'haikus#show'
    get '/haikus/:id/edit', to: 'haikus#edit'
    
    # The rails way
    resources :users
end
