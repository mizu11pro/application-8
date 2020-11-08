Rails.application.routes.draw do
  get 'booklists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'books#top'
  post 'booklists' => 'booklists#create'
end
