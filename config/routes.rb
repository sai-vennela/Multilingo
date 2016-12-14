Rails.application.routes.draw do

#Root to the home page
  root 'home#index'

#Routes related to new user creation and login
  get 'sessions/create'
  get 'sessions/destroy'
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

#The below routes are to navigate to the appropriate language pages
   get 'posts/spanish'
   get 'posts/french'
   get 'posts/german'
   get 'posts/italian'
   get 'posts/dutch'
   get 'posts/portugese'

#The below routes are to navigate to login page
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

#Below are the resources available
   resources :users
   resources :posts


end
