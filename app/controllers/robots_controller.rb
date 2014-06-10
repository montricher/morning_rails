class RobotsController < ApplicationsController

  def index
  end

  def new
  end

  # David
  def show
    # Find ID and render it
    @robot = Robot.find(params[:id])
    # @robot = Robot.new

  end

  def create
  end

  def edit
  end

  def update
  end

  # David
  def destroy
    # Find Robot ID and execute .destroy
    @robot = Robot.find(params[:id])
    @robot = robot.id
    robot.destroy
    # Need to redirect somewhere. Root_path?
    redirect_to "robots#index"
    # redirect_to root_path
  end

end

