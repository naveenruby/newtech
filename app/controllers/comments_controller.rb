class CommentsController < ApplicationController
  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.create params[:comment] 
    respond_to do |format|
      format.html { redirect_to @video }
      format.js # create.js.erb
  end

  end
end
