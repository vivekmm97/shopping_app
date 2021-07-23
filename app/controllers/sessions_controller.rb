class SessionsController < ApplicationController

  def new
    @users = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:userdata] = @user.id
    redirect_to root_path
    end
    p User.find(session[:userdata]).name
  end

  private
  def format_data(list)
    return{ 
      :name => list.name,
      :mail => list.email
     }
  end
end
