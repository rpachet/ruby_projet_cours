class UsersController < ApplicationController
  before_action :load_user, only: [:show, :edit, :update]

  def index
    @users = User.all.order('first_name')

  end

  def update
    authorized_attributes = params.require(:user).permit(:first_name, :last_name, :date_of_birth, :email, :phone_number)
    if @user.update_attributes(authorized_attributes)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def load_user
    @user = User.find(params["id"])
  end
end
