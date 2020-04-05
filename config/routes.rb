Rails.application.routes.draw do
  resources :materials
  resources :lessons
  resources :curriculums, only: [:index, :show, :create, :edit, :update]
  resources :notes
  resources :notebooks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'userscurriculums/:id', to: 'curriculums#userscurriculums'

end
