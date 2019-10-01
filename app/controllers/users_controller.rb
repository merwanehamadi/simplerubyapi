class UsersController < ApplicationController
  def upsert
    @user = User.find_by_username(params[:username])
    if @user
      @user.update(graduation_date: params['graduation-date'])
    else
      @toto = User.create(username: params[:username], graduation_date: params['graduation-date'])
    end
  end

  def is_graduated
    @user = User.find_by_username(params[:username])
    if @user and @user.graduation_date and @user.graduation_date < Time.now
      render json: {"message": "Is graduated"}
    else
      render json: {"message": "Is not graduated"}
    end
  end
end
