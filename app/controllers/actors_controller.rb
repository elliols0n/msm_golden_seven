# RCAV dots, actors: app/controllers/actors_controller.rb

class ActorsController < ApplicationController

   def new_form
     render("actors_templates/new_form.html.erb")
   end
 
   def create_row
     a = Actor.new
 
     a.name = params[:actor_name]
     a.bio = params[:actor_bio]
     a.dob = params[:actor_dob]
   #  a.image = params[:actor_image_url]

     a.save
 
     @current_count = Actor.count
     
     render("actors_templates/create_row.html.erb")
   end
 
   def index
     @list_of_actors = Actor.order(:created_at => :desc)
     render("actors_templates/index.html.erb")
   end
 
   def show
     @actor = Actor.find(params[:an_id])
     render("actors_templates/show.html.erb")
   end
 
   def edit_form
     @actor = Actor.find(params[:some_id])      
     render("actors_templates/edit_form.html.erb")
   end
 
   def update_row
     @actor = Actor.find(params[:the_id])
     render("actors_templates/update_row.html.erb")
   end
 
   def destroy_row
     a = Actor.find(params[:toast_id])
     a.destroy
     @new_count = Actor.count
     
     render("actors_templates/destroy_row.html.erb")
   end
end