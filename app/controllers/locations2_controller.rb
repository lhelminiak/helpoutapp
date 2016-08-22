class Locations2Controller < ApplicationController
  def index
    @locations = Location2.all
  end

  def new
    @new_location = Location2.new
  end

  def profile
  end

  def create
    # Instantiate a new object using form parameters
  @new_location = Location2.new(location_params)
  # Save the object
  if @new_location.save
    # If save succeeds, redirect to the index action
    flash[:notice] = "Location created successfully."
    redirect_to(:action => 'index')
  else
    # If save fails, redisplay the form so user can fix problems
    render('new')
  end
end

private




def location_params
    # same as using "params[:subject]", except that it:
    # - raises an error if :subject is not present
    # - allows listed attributes to be mass-assigned
    params.require(:location2).permit(:employee_id, :street_address, :city, :state_code, :zip_code)
end





end
