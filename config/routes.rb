Rails.application.routes.draw do
  get 'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'books' => 'booklists#create'
  get 'books' => 'booklists#index'
  get 'books/:id' => 'booklists#show', as: 'booklist'
  get 'books/:id/edit' => 'booklists#edit', as: 'edit_booklist'
  patch 'books/:id' => 'booklists#update', as: 'update_booklist'
  delete 'books/:id' => 'booklists#destroy', as: 'destroy_booklist'
  root to: 'books#top'
end
