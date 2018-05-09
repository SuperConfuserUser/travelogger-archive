class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  #before_action :user, only: [:new, :create, :show, :edit]

  # do I want to show a list of users??
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
    @user = User.create(user_params)
    if @user.valid?
      #session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def update
  end

  private

  def set_user
    # nice to have: slugifiable instead of id
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email, :about)
  end
end
