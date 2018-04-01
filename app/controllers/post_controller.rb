class PostController < ApplicationController
  def post
  end

  def new

  end

  def create
    # gcloud = Gcloud.new('mnmo')
    # storage = gcloud.storage
    # bucket = storage.bucket "staging.mnmo-199708.appspot.com"
    # file_url = params["pic"].tempfile.path
    # bucket.create_file file_url, Time.now.getutc.to_s
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.a = 0
    @post.b = 0
    @post.total = 0

    uploader1 = ImageUploader.new
    uploader1.store!(params[:pic1])

    uploader2 = ImageUploader.new
    uploader2.store!(params[:pic1])

    @post.a_url = uploader1.url
    @post.b_url = uploader2.url

    redirect_to '/post/new'
  end
end
