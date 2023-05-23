Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # List of tasks
  get 'tasks', to: 'tasks#index'

  # POST request to submit the form
  post 'tasks', to: 'tasks#create'

  # Display the task form
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # Upate a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # Show details of a task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Receive the edit form
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
