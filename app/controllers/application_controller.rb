class ApplicationController < ActionController::Base
  def index
    @posts = Post.all
  end

  def create
    Post.create(post_params)
    redirect_to "/"
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.permit(:content)
  end
end