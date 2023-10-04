Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  post("/directors", { :controller => "directors", :action => "create" })
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })
  post("/directors/:path_id/update", { :controller => "directors", :action => "update" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/insert_movie_record", { :controller => "movies", :action => "create" })
  get("/delete_movie/:an_id", { :controller => "movies", :action => "destroy" })
  post("/modify_movie_record/:the_id", { :controller => "movies", :action => "update" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  post("/actors", { :controller => "actors", :action => "create" })  
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })
  post("/actors/:path_id/update", { :controller => "actors", :action => "update" })
  
end
