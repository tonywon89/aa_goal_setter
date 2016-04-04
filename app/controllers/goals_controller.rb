class GoalsController < ApplicationController
  def new
  end

  def index
    if current_user
      @goals = Goal.where("shareable = 'true' OR user_id = ?", current_user.id)
    else
      @goals = Goal.where(shareable: true)
    end
  end

  def create
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
    params.require(:goal).permit(:body, :viewable)
  end
end
