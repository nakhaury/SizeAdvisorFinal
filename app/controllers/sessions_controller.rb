class SessionsController < ApplicationController
  def new
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "See ya!"
  end

  def create
    user = User.find_by(:first_name => params[:fname])
    if user.present?
      if user.password == params[:pwd]
        session[:user_id] = user.id
        redirect_to root_url, notice: "Hello, get ready to size"
      else
        redirect_to root_url, notice: "Wrong Password."
      end
    else
      redirect_to root_url, notice: "Unknown user."
    end
  end

end
