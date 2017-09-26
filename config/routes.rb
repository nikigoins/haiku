Rails.application.routes.draw do
 # root 'haikus#about'
  get 'rules', to: 'haiku#rules'
end
