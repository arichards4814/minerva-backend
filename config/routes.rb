Rails.application.routes.draw do
  resources :curriculumstags
  resources :tags
  resources :notebooks_lessons
  resources :lessons, only: [:create, :update, :destroy]
  resources :curriculums, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :notes, only: [:create, :destroy]
  resources :notebooks
  resources :users
  resources :subscriptions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'userscurriculums/:id', to: 'curriculums#userscurriculums'
  get 'usersnotebooks/:id', to: 'notebooks#usersnotebooks'
  get 'userssubscriptions/:id', to: 'subscriptions#userssubscriptions'

  get 'lessonsnotebooks/:id', to: 'lessons#lessonsnotebooks'

  post 'notebookslessons', to: 'notebooks_lessons#create'

  patch '/curriculums/:id/image', to: 'curriculums#uploadimage'

  post '/pin/:id', to: 'notebooks#pin'
  post '/unpin/:id', to: 'notebooks#unpin'
  post '/login', to: 'users#login'

  get '/securelogin', to: 'auth#login'

  get '/tweet', to: 'application#fetch_tweet'

end
