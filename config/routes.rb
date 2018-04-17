Rails.application.routes.draw do

  get 'search/index'

  namespace :admin do
    resources :users
    resources :chapters
    resources :courses
    resources :topics
    resources :paths

    root to: "users#index"
  end

  resources :courses do
    resources :chapters
  end
  resources :topics
  resources :paths
  devise_for :users

  # course search

  get "course/index2" => "course#index2"

  get   "course/search" => "course#search"

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

  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
