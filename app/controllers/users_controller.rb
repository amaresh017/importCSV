class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def import
  	User.import(params[:file])
  	flash[:notice] = "File imported successfully."
  	redirect_to root_url
  end
end
