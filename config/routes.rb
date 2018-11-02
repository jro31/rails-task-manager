Rails.application.routes.draw do

#Create
  #Get the form
    get 'tasks/new', to: 'tasks#new'
  #Post the form
    post 'tasks', to: 'tasks#create'

#Read
  #Show one task
    get 'tasks/:id', to: 'tasks#show', as: :task
  #Index all tasks
    get 'tasks', to: 'tasks#index'


#Update
  #Get the form
    get 'tasks/:id/edit', to: 'tasks#edit'
  #Update the tasks
    patch 'tasks/:id', to: 'tasks#update'

#Delete
  #Delete a task
    delete 'tasks/:id', to: 'tasks#destroy'

end
