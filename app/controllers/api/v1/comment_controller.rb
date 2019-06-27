class Api::V1::CommentController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: [:show, :update, :destroy]


  # GET /comment
  def index
    @comments = Comment.all
    render json: @comment
  end


  # GET /comment/1
  def show
    render json: @comment
  end

  # POST /comment
  def create
    @comments = Comment.new(comment_params)
    if @comments.save
      render json: @comments, status: :created, location:        api_v1_comment_url(@comments)
    else
      render json: @comments.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /@@comment/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /@comment/1
  def destroy
    @comment.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end
  # Only allow a trusted parameter “white list” through.
  def comment_params
    params.require(:comment).permit(:content,)
  end



end

