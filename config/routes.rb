# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'contactos', :to => 'contactos#index'
get 'contactos/new', :to => 'contactos#new'
post 'contactos/create', :to => 'contactos#create'
get 'contactos/edit/:id', :to => 'contactos#edit'
post 'contactos/update/:id', :to => 'contactos#update'
get 'contactos/delete/:id', :to => 'contactos#delete'
