class RobotsController < ApplicationsController

  def index
  end

  def new
  end

<<<<<<< HEAD
  # David
=======

>>>>>>> 3668d2b05f6552034505f4d135f9bb42a682df88
  def show
    # Find ID and render it
    @robot = Robot.find(params[:id])
    # @robot = Robot.new

  end

  def create
  end


# Joe's duty
  def edit

    @robot = robot.find(robot_attributes[:id])

  end

  def update

    robot = robot.find(robot_attributes[:id])

    robot.update_attributes(robot_attributes)

    redirect_to robot_path(robot_attributes[:id])


  end

<<<<<<< HEAD
  # David
=======

>>>>>>> 3668d2b05f6552034505f4d135f9bb42a682df88
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

