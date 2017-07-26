Rails.application.routes.draw do
  # Routes for director
  # create
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/create_director/new", { :controller => "directors", :action => "create_row"})

  # read
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:an_id", { :controller => "directors", :action => "show" })

  # update
  get("/directors/:some_id/edit", { :controller => "directors", :action => "edit_form"})
  get("/directors/:some_id/edit", { :controller => "directors", :action => "update_row"})

  # delete
  get("/delete_director/:toast_id", { :controller => "directors", :action => "destroy_row"})

  # Routes for movies
    # create
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/create_movie/new", { :controller => "movies", :action => "create_row"})

  # read
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:an_id", { :controller => "movies", :action => "show" })

  # update
  get("/movies/:some_id/edit", { :controller => "movies", :action => "edit_form"})
  get("/movies/:some_id/edit", { :controller => "movies", :action => "update_row"})

  # delete
  get("/delete_movie/:toast_id", { :controller => "movies", :action => "destroy_row"})

  # Routes for actors
  # create
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/create_actor/new", { :controller => "actors", :action => "create_row"})

  # read
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:an_id", { :controller => "actors", :action => "show" })

  # update
  get("/actors/:some_id/edit", { :controller => "actors", :action => "edit_form"})
  get("/actors/:some_id/edit", { :controller => "actors", :action => "update_row"})

  # delete
  get("/delete_actor/:toast_id", { :controller => "actors", :action => "destroy_row"})
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
