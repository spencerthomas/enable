Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  get 'pages/library'

  get 'pages/path'

  get 'pages/path_cover'

  get 'pages/course_cover'

  get 'pages/course_video'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
