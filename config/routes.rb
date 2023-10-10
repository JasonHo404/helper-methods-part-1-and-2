Rails.application.routes.draw do

  root "movies#index"

  # Routes for the Movie resource:

  # CREATE
  #post("/movies",  :controller => "movies", :action => "create" )
  post "/movies", to:"movies#create", as: :movies
  #get("/movies/new",  :controller => "movies", :action => "new" )
  get "/movies/new", to:"movies#new", as: :new_movie
  # READ
  #get("/movies",  :controller => "movies", :action => "index" )
  get "/movies", to:"movies#index"
  #get("  /movies/:id",  :controller => "movies", :action => "show" )
  get "/movies/:id", to:"movies#show", as: :movie
  # UPDATE
 # patch("/movies/:id",  :controller => "movies", :action => "update" )
  patch "/movies/:id", to: "movies#update"
  #get("/movies/:id/edit",  :controller => "movies", :action => "edit" )
  get "/movies/:id/edit", to: "movies#edit", as: :edit_movie

  
  # DELETE
  #delete("/movies/:id",  :controller => "movies", :action => "destroy" )
  delete "/movies/:id", to: "movies#destroy" 

  #------------------------------
end
