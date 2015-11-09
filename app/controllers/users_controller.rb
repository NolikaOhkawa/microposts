class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
    
    def edit
      @message = User.new(edit_params)
      if @user.save
        flash[:success] = "Congratualeions on your edit!"
        redirect_to @user
      else
        render 'edit'
    end
    
    def upload
    end
    
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def edit_params
    params.require(:user).permit(:url, :email, :password)
end
