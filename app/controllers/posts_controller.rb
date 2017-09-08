class PostsController < ApplicationController

  def index
    @posts= Post.all
  end

  def new
    @form = Post::CreateForm.new #new instance of the class
  end

  def create
     byebug
    @form = Post::CreateForm.new(form_create_params)
    if @form.save
      redirect_to posts_path
    else
      render :new
    end
  end

   def show
     @post= Post.find(params[:id])
   end

private

  def post_params
    post_params = params.require(:post).permit(:title, :body)
  end

  def form_create_params
    form_create_params = params.require(:post_create_form).permit(post_attributes:[:title,:body])
  end

end
