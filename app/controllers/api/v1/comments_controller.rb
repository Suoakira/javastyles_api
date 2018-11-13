class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    if @comment
      render json: @comment
    else
      render json: {error: 'Comment not found.'}, status: 400
    end
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: {error: 'Unable to create comment.'}, status: 400
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :style_id)
  end

end
