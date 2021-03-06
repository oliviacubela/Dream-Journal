class UsersController < ApplicationController

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to user_path(@user) 
    else
      render :new
    end
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     session[:user_id] = @user.id
  #     redirect_to user_path(user_params)
  #   else
  #     render :new 
  #   end
  # end 
  def show 
    @user = User.find(params[:id])
  end

  # def show 
  #   redirect_if_not_logged_in
  #   @user = User.find_by_id(params :id)
  #   redirect_to '/' if !@user 
  # end


  private 

  def user_params 
    params.require(:user).permit(:email, :username)
  end

end