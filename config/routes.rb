Rails.application.routes.draw do
  devise_for :users
  # Routes for the Artist resource:

  # CREATE
  post("/insert_artist", { :controller => "artists", :action => "create" })
          
  # READ
  get("/artists", { :controller => "artists", :action => "index" })
  
  get("/artists/:path_id", { :controller => "artists", :action => "show" })
  
  # UPDATE
  
  post("/modify_artist/:path_id", { :controller => "artists", :action => "update" })
  
  # DELETE
  get("/delete_artist/:path_id", { :controller => "artists", :action => "destroy" })

  #------------------------------

  # Routes for the Song resource:

  # CREATE
  post("/insert_song", { :controller => "songs", :action => "create" })
          
  # READ
  get("/songs", { :controller => "songs", :action => "index" })
  
  get("/songs/:path_id", { :controller => "songs", :action => "show" })
  
  # UPDATE
  
  post("/modify_song/:path_id", { :controller => "songs", :action => "update" })
  
  # DELETE
  get("/delete_song/:path_id", { :controller => "songs", :action => "destroy" })

  #------------------------------

  #devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
