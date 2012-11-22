Mcatqd::Application.routes.draw do
  resources :answers
  resources :questions
  resources :options

  root :to => "home#index" 
  get "home/index"
end
