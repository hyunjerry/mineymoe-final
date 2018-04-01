class PostController < ApplicationController

  def index
    @posts = Post.all
  end

  def post
  end

  def create
    p = Post.new
    p.user = current_user
    p.atitle = params[:atitle]
    p.btitle = params[:btitle]
    p.acontent = params[:acontent]
    p.bcontent = params[:bcontent]
    p.save
    redirect_to "/post"

  end

  def postlike
    l = Like.new
    l.user = current_user
    l.vpost_id = params[:post_id]
    l.save
    redirect_to "/post"
  end

  def postunlike
    l = Like.where(:vpost_id => params[:post_id]).where(:user => current_user).take
    l.delete
    redirect_to "/post"
  end

  def acount
    a = Acount.new
    a.user = current_user
    a.post_id = params[:post_id]
    a.save
    redirect_to "/post"
  end

  def bcount
    b = Bcount.new
    b.user = current_user
    b.post_id = params[:post_id]
    b.save
    redirect_to "/post"
  end


end
