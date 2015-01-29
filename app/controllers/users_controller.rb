class UsersController < ApplicationController

  def index
    @user = User.all
  end


  def new
    @user = User.new #user gets created and then gets sent to the create method.
  end



  def create
    @user = User.new(params[:user].permit(:username, :email, :enctypted_password, :salt)) #parameter is the user created from the new method.

    if @user.save #if the user is successfully get saved
      redirect_to users_path, :notice => "You signed up successfully"

    else #if the not saved successfully
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      render "new"

    end

  end

end
