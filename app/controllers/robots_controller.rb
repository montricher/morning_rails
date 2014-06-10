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
    @robot = robot.find(params[:id])
  end

  def update
    robot = robot.find(robot_attributes[:id])

    robot.update_attributes(robot_attributes)

    redirect_to robot_path(robot_attributes[:id])
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

  private

  def robot_attributes

    params.require(:robot).permit(:name, :purpose, :price, :year)

  end

end

