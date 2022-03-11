class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      render :json => {:user => "user has been create"}, status: :created
    else
      render :json => { :errors => @user.errors.full_messages }, status: 422
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  private 
  def user_params
    params.require(:user).permit(:username)
  end
end