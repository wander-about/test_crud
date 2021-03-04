class CommentsController < ApplicationController
  def create
    post = Post.find(params[:id]) #id -> post의 id 값 

    comment = Comment.new
    comment.user_name = params[:user_name]
    comment.body = params[:body]
    comment.post_id = params[:id]

    comment.save

    redirect_to request.referrer
  end
end
