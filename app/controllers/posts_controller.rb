class PostsController < ApplicationController

  def index
    @posts = post.orber(id: "DESC")
  end

  #def new
  #end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
