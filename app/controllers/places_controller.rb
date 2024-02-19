class PlacesController < ApplicationController


  def index
    # find all Company rows
    @places = Place.all
    # render companies/index view
  end

  def show
    # find a Company
    @place = Place.find_by({"id" => params["id"]})
    # find the Company's Contacts
    #@entries = Entry.where({"place_id" => @places["id"]})
    # render companies/show view with details about Company
  end

  def new
    # render view with new Company form
  end

  def create
    # start with a new Company
    @place = Place.new
    # assign user-entered form data to Company's columns
    @place["name"] = params["name"]
    # save Company row
    @place.save
    # redirect user
    redirect_to "/places"
  end

  # def edit
  #   # find a Company
  #   # render view with edit Company form
  # end

  # def update
  #   # find a Company
  #   # assign user-entered form data to Company's columns
  #   # save Company row
  #   # redirect user
  # end



end
