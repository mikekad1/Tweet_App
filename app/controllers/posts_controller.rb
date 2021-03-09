class PostsController < ApplicationController
  def index
    # Replace the array with Post.all
    @posts = Post.all
  end
end
