Rails.application.routes.draw do

  root 'people#index'
  
  get 'index', to: 'page#index'
  get 'about', to: 'page#about'

  get 'people', to: 'people#index'
  get 'show_person/:id', to: 'people#show', as: 'show_person'
  get 'new_person' => 'people#new'
  post 'create_person' => 'people#create'
  get 'edit_person/:id', to: 'people#edit', as: 'edit_person'
  patch 'update_person/:id', to: 'people#update', as: 'update_person'
  delete 'delete_person/:id', to: 'people#delete', as: 'delete_person'

end