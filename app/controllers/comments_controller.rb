class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all

  end

  def new
  end
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
   end
 
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
