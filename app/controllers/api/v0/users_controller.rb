class Api::V0::UsersController < ApplicationController
  def index   
    render json: UserSerializer.new(User.all)
  end

  def show
    render json: UserSerializer.new(User.find(params[:id]))
  end
end