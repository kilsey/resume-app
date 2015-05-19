class UsersController < ApplicationController

  # before_action :authenticate_user!, only: [:edit, :show, :update]

  def index
    @users = User.all
  end

  def show
    id = params[:id].nil? ? current_user.id : params[:id]
    @user = User.find(id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :label, :email, :phone, :website, :summary)
  end
end
