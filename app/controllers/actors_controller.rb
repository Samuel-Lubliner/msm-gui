class ActorsController < ApplicationController
  def index
    matching_actors = Actor.all
    @list_of_actors = matching_actors.order({ :created_at => :desc })

    render({ :template => "actor_templates/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_actors = Actor.where({ :id => the_id })
    @the_actor = matching_actors.at(0)
      
    render({ :template => "actor_templates/show" })
  end

  def create
    actor = Actor.new
    actor.name = params.fetch("actor")["name"]
    actor.save
  
    redirect_to("/actors/#{actor.id}")
  end

  def destroy
    actor = Actor.find(params.fetch("id"))
    actor.destroy
  
    redirect_to("/actors")
  end

  def update
    actor = Actor.find(params.fetch("path_id"))
    actor.image = params.fetch("actor")["image"]
    actor.save
  
    redirect_to("/actors/#{actor.id}")
  end

end
