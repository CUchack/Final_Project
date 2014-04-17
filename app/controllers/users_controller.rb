class UsersController < ApplicationController
  def signup
    
  end
  def new
    @user = User.create!(params[:email])
    flash[:notice] = "#{@user.firstname} was successfully created."
 #   redirect_to preferences_path
  end
  def preferences
    @user = User.find_by_id(session[:id])
#    @user.update_attributes!(session[:email])
#    flash[:notice] = "#{@user.firstname} was successfully updated."
  end
  def edit
    
  end
end
