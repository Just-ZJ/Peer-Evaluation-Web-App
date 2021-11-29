Rails.application.routes.draw do
  root 'students#index'
  get '/search', to: 'students#search'
  post '/search', to: 'students#create'
  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  get '/signupstudents', to: 'users#newStudent'
  post '/signupstudents', to: 'users#createStudent'
  get '/signupprofessors', to: 'users#newProfessor'
  post '/signupprofessors', to: 'users#createProfessor'
  resources :courses
  resources :teams
  resources :students
  resources :evaluations
  resources :users
  #resources :professors
  # resources :course
  # resources :professor
  # resources :project
  # resources :student
  # resources :team
  # resources :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
