class BlogPostsController < ApplicationController
  def new
    @blogPost = BlogPost.new
  end

  def edit
  end

  def delete
  end

  def show
  end

  def create
    # byebug
    @blogPost = BlogPost.new(blog_post_params)
    if @blogPost.save
      redirect_to @blogPost
    else
      flash[:error] = "Didn't save"
      render :new
    end
  end

  def blog_post_params
    params.require(:blog_post).permit(
      :title,
      :post_content
    )
  end
end
