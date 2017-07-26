# RCAV dots, actors: app/controllers/actors_controller.rb

class ActorsController < ApplicationController

   def new_form
     render("actors_templates/new_form.html.erb")
   end
 
   def create_row
     render("actors_templates/create_row.html.erb")
   end
 
   def index
     render("actors_templates/index.html.erb")
   end
 
   def show
     render("actors_templates/show.html.erb")
   end
 
   def edit_form
     render("actors_templates/edit_form.html.erb")
   end
 
   def update_row
     render("actors_templates/update_row.html.erb")
   end
 
   def destroy_row
     render("actors_templates/destroy_row.html.erb")
   end
 end