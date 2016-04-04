class GoalsController < ApplicationController
  def new
  end


  def create
    # @goal = Goal.new(goal_params)
    # @goal.user_id = current_user.id
    if current_user.goals.create(goal_params)
      redirect_to current_user.goals.last
    else
      flash.now[:errors] = ["Cannot create goal"]
      render :new
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

  private
  def goal_params
    params.require(:goal).permit(:body, :shareable)
  end
end
