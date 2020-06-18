Rails.application.routes.draw do

          # Home #
  root 'pages#home'
          # About #
  get 'about', to:'pages#about'
          # Articles #
  resources :articles
          # Sign up #
  get 'signup', to: 'users#signup'
  resources :users, except: [:new]
          # Log in #
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
            # Categories #
  resources :categories, except: [:destroy]

end
