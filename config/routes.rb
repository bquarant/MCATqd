Mcatqd::Application.routes.draw do
  
  get "about/index"

  devise_for :users do
    resources :answers
  end

  resources :answers
  resources :questions
  resources :options
  resources :quizzes

  #Note to self: quizzes#index is NOT questions#show!!
  root :to => "quizzes#index" 
  
  get "about/disclaimer"
  get "about/index"
  
  match ':permalink', :controller => 'about', :action => 'index', :as => 'about'    
  match ':permalink', :controller => 'about', :action => 'disclaimer', :as => 'disclaimer'  

end