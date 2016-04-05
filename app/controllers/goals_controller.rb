class GoalsController < ApplicationController
  # before_action :require_login, only: [:create, :destroy]

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

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy

    redirect_to root_url
  end

  private
  def goal_params
    params.require(:goal).permit(:body, :viewable)
  end

  def require_login
    redirect_to new_session_url unless current_user
  end
end
