class RobotsController < ApplicationsController

  def index
  end

  def new
  end


  def show
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


  def destroy
  end

  private

  def robot_attributes

    params.require(:robot).permit(:name, :purpose, :price, :year)

  end


end
