class ApplicationController < ActionController::Base
  def index
    @posts = Post.all
  end

  def create
    Post.create(post_params)
    redirect_to "/"
  end

  private
  def post_params
    params.permit(:content)
  end
end