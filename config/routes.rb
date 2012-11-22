Mcatqd::Application.routes.draw do
  resources :answers
  resources :questions
  resources :options
  resources :quizzes

  root :to => "quizzes#index" 
  get "home/index"
end
