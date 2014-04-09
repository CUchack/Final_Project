class SessionsController < ApplicationController
 require 'user.rb'
  def new
  render 'login'
  end

  def create
   user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
      # Sign the user in and redirect to the user's show page.
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'login'
    end
    render 'login'
  end

  def destroy
  render 'login'
  end
end
