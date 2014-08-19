class PagesController < ApplicationController

  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
    end
  end
end