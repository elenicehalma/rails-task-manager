Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list all tasks
  get 'tasks', to:'tasks#index'
  # create form
  get 'tasks/new', to: 'tasks#new'
  # list on tasks
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # create task
  post 'tasks', to: 'tasks#create'
  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  #update
  patch 'tasks/:id', to: 'tasks#update'
  #destroy
  delete 'tasks/:id', to: 'tasks#destroy'

end
