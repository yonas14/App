class PostsController < ApplicationController
  def index

    @posts = Post.all

  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  def create
    @post = Post.new(params[:post].permit(:title, :content))

    if @post.save
        redirect_to posts_path, :notice => "Successfully Saved"
    else
        render "new"
    end

  end
  def edit
    @post = Post.find(params[:id])

  end
  def update

    @post = Post.find(params[:id])

    if @post.update_attributes((params[:post].permit(:title, :content)))
      redirect_to posts_path, :notice => "Post Updated"
    else
      render "edit"
    end

  end
  def destroy

  end

end
