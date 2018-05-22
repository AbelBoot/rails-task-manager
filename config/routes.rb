Rails.application.routes.draw do
#
# the create should be before because, at some point,
# rails will think that task/new is a task(id) (?)

get 'tasks/new', to: 'tasks#new',  as: "new_task"
post 'tasks', to: 'tasks#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "tasks", to: "tasks#index"
#, as: :index
# See index.html.erb for an explanation. as: are paths that we can
# assigned for rails, but he can make them up himself (we can
#   check in local for the paths).
# First we create the page (url) after the verb, and then a
# prefix must/should be created after the as.
# all should work without the as:
get "tasks/:id", to: "tasks#show",  as: "task"


#update

get "tasks/:id/edit", to: "tasks#edit",  as: "edit_task"
patch "tasks/:id", to: "tasks#update"

#delete
delete "tasks/:id", to: "tasks#destroy", as: "delete_task"
end
