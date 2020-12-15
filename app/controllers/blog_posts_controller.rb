class BlogPostsController < ApplicationController
  def new
    @blog_post = BlogPost.new
  end

  def edit
    @blog_post = BlogPost.find(params[:id])

  end

  def delete
    @blog_post.destroy
  end

  def show
    # byebug
    @blog_post = BlogPost.find(params[:id])
  end

  def create
    # byebug
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      flash[:error] = "Didn't save"
      render :new
    end
  end

  def update
    
    @blog_post = BlogPost.find(params[:id])
    @blog_post.update(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      flash[:error] = "Didn't update."
      render :show
    end
  end

  def blog_post_params
    params.require(:blog_post).permit(
      :title,
      :post_content
    )
  end
end
