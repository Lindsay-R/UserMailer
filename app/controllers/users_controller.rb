class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(:email => params[:user][:email], :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation])

    if @user.save
     UserMailer.welcome_email(@user).deliver

      redirect_to root_path
    else

      flash[:notice] = "Your account could not be created"
      render :new
    end

  end

end