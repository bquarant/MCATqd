Mcatqd::Application.routes.draw do
  resources :answers
  resources :questions

  root :to => "home#index" 
  get "home/index"
end
