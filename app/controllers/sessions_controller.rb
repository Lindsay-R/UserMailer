class SessionsController < ApplicationController
  def new
    @user = User.new
  end


  def create
    @user = User.find_by_email(params[:user][:email])

    if @user.present? && @user.authenticate(params[:user][:password])

      session[:user_id] = @user.id

      flash[:notification] = 'Thank You'

      redirect_to root_path
    else
      @user = User.new
      flash[:email_error] = 'Incorrect Email or Password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end