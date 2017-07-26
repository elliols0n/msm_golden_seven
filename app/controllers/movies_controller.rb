# RCAV dots, movies: app/controllers/movies_controller.rb

class MoviesController < ApplicationController

   def new_form
     render("movies_templates/new_form.html.erb")
   end
 
   def create_row
     render("movies_templates/create_row.html.erb")
   end
 
   def index
     render("movies_templates/index.html.erb")
   end
 
   def show
     render("movies_templates/show.html.erb")
   end
 
   def edit_form
     render("movies_templates/edit_form.html.erb")
   end
 
   def update_row
     render("movies_templates/update_row.html.erb")
   end
 
   def destroy_row
     render("movies_templates/destroy_row.html.erb")
   end
 end