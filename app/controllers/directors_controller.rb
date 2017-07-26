# RCAV dots, directors: app/controllers/directors_controller.rb

class DirectorsController < ApplicationController

   def new_form
     render("directors_templates/new_form.html.erb")
   end
 
   def create_row
     render("directors_templates/create_row.html.erb")
   end
 
   def index
     render("directors_templates/index.html.erb")
   end
 
   def show
     render("directors_templates/show.html.erb")
   end
 
   def edit_form
     render("directors_templates/edit_form.html.erb")
   end
 
   def update_row
     render("directors_templates/update_row.html.erb")
   end
 
   def destroy_row
     render("directors_templates/destroy_row.html.erb")
   end
 end