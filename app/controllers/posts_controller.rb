class PostsController < ApplicationController

  def index
    @posts= Post.all
  end

  def new
    @post= Post.new
  end

  def create
    # byebug
    @post=Post.new(post_params)
    if @post.save
    redirect_to posts_path
  else
    render :new
    end
  end


   def show
     @post= Post.find(params[:id])
   end



  def post_params
    post_params = params.require(:post).permit(:title, :body)
  end
end
