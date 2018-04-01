class PostController < ApplicationController
  def post
  end

  def new

  end

  def create
    gcloud = Gcloud.new('mnmo')
    storage = gcloud.storage
    bucket = storage.bucket "staging.mnmo-199708.appspot.com"
    file_url = params["pic"].tempfile.path
    bucket.create_file file_url, Time.now.getutc.to_s

    redirect_to 'post/new'
  end
end
