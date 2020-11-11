class BlogPostsController < ApplicationController
  def new
    @blogpost = BlogPost.create(title: :title, post_content: post_content)
  end

  def edit
  end

  def delete
  end
end
