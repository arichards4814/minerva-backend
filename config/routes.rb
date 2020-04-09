Rails.application.routes.draw do
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

  post 'curriculums/:id/image', to: 'curriculums#uploadimage'

end
