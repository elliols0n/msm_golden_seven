# RCAV dots, movies: app/controllers/movies_controller.rb

class MoviesController < ApplicationController

   def new_form
     render("movies_templates/new_form.html.erb")
   end
 
   def create_row
     m = Movie.new
 
     m.title = params[:movie_title]
     m.year = params[:movie_year]
     m.duration = params[:movie_duration]
     m.description = params[:movie_description]
   #  m.image = params["movie_image_url"]

     m.save
 
     @current_count = Movie.count

     render("movies_templates/create_row.html.erb")
   end
 
   def index
     @list_of_movies = Movie.order(:created_at => :desc)
     render("movies_templates/index.html.erb")
   end
 
   def show
     @movie = Movie.find(params[:an_id])
     render("movies_templates/show.html.erb")
   end
 
   def edit_form
     @movie = Movie.find(params[:some_id])
     render("movies_templates/edit_form.html.erb")
   end
 
   def update_row
     @movie = Movie.find(params[:the_id])
     render("movies_templates/update_row.html.erb")
   end
 
   def destroy_row
     d = Movie.find(params[:toast_id])
     d.destroy
     @new_count = Movie.count
     render("movies_templates/destroy_row.html.erb")
   end
end