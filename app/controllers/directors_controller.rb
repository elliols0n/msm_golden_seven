# RCAV dots, directors: app/controllers/directors_controller.rb

class DirectorsController < ApplicationController

   def new_form
     render("directors_templates/new_form.html.erb")
   end
 
   def create_row
     d = Director.new
 
     d.name = params[:director_name]
     d.bio = params[:director_bio]
     d.dob = params[:director_dob]
   #  d.image = params[:director_image_url]

     d.save
 
     @current_count = Director.count
     
     render("directors_templates/create_row.html.erb")
   end
 
   def index
     @list_of_directors = Director.order(:created_at => :desc)
     render("directors_templates/index.html.erb")
   end
 
   def show
     @director = Director.find(params[:an_id])
     render("directors_templates/show.html.erb")
   end
 
   def edit_form
     render("directors_templates/edit_form.html.erb")
   end
 
   def update_row
     @director = Director.find(params[:the_id])
     render("directors_templates/update_row.html.erb")
   end
 
   def destroy_row
     d = Director.find(params[:toast_id])
     d.destroy
     @new_count = Director.count      
     render("directors_templates/destroy_row.html.erb")
   end
end