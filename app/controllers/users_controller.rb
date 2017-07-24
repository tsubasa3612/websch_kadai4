class UsersController < ApplicationController
  def index
  end

  def show
  	# @user = Hash.new
  	@user = User.find_by(:name => params[:name])
  end

  private

    def post_params
      params.require(:user).permit(:title, :content, :user_id, :user_name)
    end


end
