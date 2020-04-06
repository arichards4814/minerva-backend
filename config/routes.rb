Rails.application.routes.draw do
  resources :lessons, only: [:create, :update, :destroy]
  resources :curriculums, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :notes
  resources :notebooks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'userscurriculums/:id', to: 'curriculums#userscurriculums'

end
