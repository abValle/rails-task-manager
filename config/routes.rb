Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # CREATE
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # SHOW
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
