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



  end


  def destroy
  end

  private

  def robot_attributes

    params.require(:robot).permit(:name, :purpose, :price, :year)

  end


end
