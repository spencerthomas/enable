Rails.application.routes.draw do  

  namespace :admin do
    resources :users
    resources :chapters
    resources :courses
    resources :topics

    root to: "users#index"
  end

  resources :courses do
    resources :chapters
  end
  resources :topics
  devise_for :users

  #Progresses
  get    "chapters/read" => "progresses#show"
  post   "chapters/mark_as_complete" => "progresses#create"
  delete "chapters/mark_as_incomplete" => "progresses#delete"
  
  #Subscriptions
  resources :charges

  root 'courses#index'

  get 'pages/library'

  get 'pages/subscriptions'

  get 'pages/path'

  get 'pages/path_cover'

  get 'pages/chapter_cover'

  get 'pages/course_video'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
