class BlogPostsController < ApplicationController
  #Add before actions 
  # At a point have different before_actions
  before_action :get_blog_post, only: %i[show edit delete update]

  def new
    #How can we connect the blogpost to an author?
    @blog_post = BlogPost.new
    @blog_post = User.first.blog_posts.new
  end

  def edit
   

  end

  def delete
    if @blog_post.destroy
      flash[:success] = "#{@blog_post.name} was destroyed"
    else
      flash[:error] = "Didn't destroy"
      render :show
    end

  end

  def show
    # byebug
   
  end

  def create
    # byebug
    @blog_post = User.find(1).blog_posts.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      flash[:error] = "Didn't save"
      render :new
    end
  end

  def update
    
   
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
  private
  def get_blog_post
    @blog_post = BlogPost.find(params[:id])
  end
  
end
