class PostController < ApplicationController
  def post
  end

  def new
    @post = Post.new

  end
end
