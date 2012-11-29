Mcatqd::Application.routes.draw do
  
  get "about/index"

  devise_for :users do
    resources :answers
  end

  resources :answers
  resources :questions
  resources :options
  resources :quizzes

  root :to => "quizzes#index" 
  
  get "about/index"
  match ':permalink', :controller => 'about', :action => 'index', :as => 'about'
end