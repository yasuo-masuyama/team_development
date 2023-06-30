class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      #redirect_to ■■ notice:"アカウントを作成しました"
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end