Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movie/:id/same_director' => 'movies#same_director', :as => :same_director
end
