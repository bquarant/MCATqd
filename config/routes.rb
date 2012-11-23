Mcatqd::Application.routes.draw do
  
  devise_for :users do
    resources :answers
  end

  resources :answers
  resources :questions
  resources :options
  resources :quizzes

  root :to => "quizzes#index" 
  get "home/index"
end