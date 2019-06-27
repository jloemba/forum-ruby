class Api::V1::UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: [:show, :update, :destroy]


  # GET /user
  def index
    @users = User.all
    render json: @users
  end


  # GET /user/1
  def show
    render json: @user
  end

  # POST /user
  def create
    @users = User.new(user_params)
    if @users.save
      render json: @users, status: :created, location:        api_v1_user_url(@users)
    else
      render json: @users.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /@user/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /@user/1
  def destroy
    @user.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
  # Only allow a trusted parameter “white list” through.
  def user_params
    params.require(:user).permit(:lastname, :firstname, :mail)
  end


end
