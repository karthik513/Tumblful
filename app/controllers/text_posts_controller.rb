class TextPostsController < ApplicationController
  def index
    @text_posts = TextPosts.all
  end

  def show
    @text_post = TextPosts.find(params[:id])
  end

  def edit

  end

  def new
  end

  def create
    @text_post = TextPosts.new(url: params[:url])
    if @text_post.save
      redirect_to text_posts_path
    else
      @errors = @text_post.errors
      render :new
    end
  end

  def update
    @text_post = TextPosts.find(params[:id])
    if @text_post.update(url: params[:url])
       redirect_to text_posts_path
    else
       render :edit
    end
  end

  def delete
    @text_post = TextPosts.find(params[:id])
    @text_post.destroy
    redirect_to text_posts_path
  end

end
