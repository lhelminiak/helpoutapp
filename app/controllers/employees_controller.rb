class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @new_employee = Employee.new
  end

  def profile
  end

  def create
    # Instantiate a new object using form parameters
    @new_employee = Employee.new(employee_params)
    # Save the object
    if @new_employee.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Employee created successfully."
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  private


  

  def employee_params
    # same as using "params[:subject]", except that it:
    # - raises an error if :subject is not present
    # - allows listed attributes to be mass-assigned
    params.require(:employee).permit(:first_name, :last_name, :profile_picture, :highschool_name, :driver_license,
                                      :highschool_grade, :bio)
  end



end
