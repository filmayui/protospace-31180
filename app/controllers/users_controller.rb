class UsersController < ApplicationController

  def show
    unless user_signed_in?
      redirect_to root_path
    end
    @user = User.find(params[:id])
    @prototypes = @user.prototypes.all
  end
end
