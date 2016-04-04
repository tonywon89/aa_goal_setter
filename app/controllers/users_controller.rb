class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end


  def show
  end

  def new
    @user = User.new
  end

  def edit
  end


  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      redirect_to users_url
    else
      render :new
    end
  end


  def update

  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :password)
    end
end
