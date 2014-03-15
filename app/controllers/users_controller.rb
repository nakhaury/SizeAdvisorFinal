class UsersController < ApplicationController

  def new
  end


  def create
    user = User.new
    user.first_name = params["first_name"]
    user.password = params["password"]
    user.save
    redirect_to root_url, notice: "Thanks for signing up."
  end

end
