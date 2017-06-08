class LocationsController < ApplicationController
  def index
    @locations = Location.all

    render("locations/index.html.erb")
  end

  def show
    @location = Location.find(params[:id])

    render("locations/show.html.erb")
  end

  def new
    @location = Location.new

    render("locations/new.html.erb")
  end

  def create
    @location = Location.new

    @location.name = params[:name]
    @location.city = params[:city]
    @location.state = params[:state]

    save_status = @location.save

    if save_status == true
      redirect_to("/locations/#{@location.id}", :notice => "Location created successfully.")
    else
      render("locations/new.html.erb")
    end
  end

  def edit
    @location = Location.find(params[:id])

    render("locations/edit.html.erb")
  end

  def update
    @location = Location.find(params[:id])

    @location.name = params[:name]
    @location.city = params[:city]
    @location.state = params[:state]

    save_status = @location.save

    if save_status == true
      redirect_to("/locations/#{@location.id}", :notice => "Location updated successfully.")
    else
      render("locations/edit.html.erb")
    end
  end

  def destroy
    @location = Location.find(params[:id])

    @location.destroy

    if URI(request.referer).path == "/locations/#{@location.id}"
      redirect_to("/", :notice => "Location deleted.")
    else
      redirect_to(:back, :notice => "Location deleted.")
    end
  end
end
