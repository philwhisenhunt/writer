class BlogPostsController < ApplicationController
  def new
    @blogpost = blogPost.new(title: :title)
  end

  def edit
  end

  def delete
  end
end
