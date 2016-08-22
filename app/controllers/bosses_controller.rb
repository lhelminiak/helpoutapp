class BossesController < ApplicationController
  def index
    @bosses = Boss.all
  end

  def new
    @new_boss = Boss.new
  end

  def profile
  end

  def create
    # Instantiate a new object using form parameters
    @new_boss = Boss.new(boss_params)
    # Save the object
    if @new_boss.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Boss created successfully."
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  private



  def boss_params
    # same as using "params[:subject]", except that it:
    # - raises an error if :subject is not present
    # - allows listed attributes to be mass-assigned
    params.require(:boss).permit(:first_name, :last_name)
  end


end
