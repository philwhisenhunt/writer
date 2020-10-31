require 'test_helper'

class BlogPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get blog_posts_new_url
    assert_response :success
  end

  test "should get edit" do
    get blog_posts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get blog_posts_delete_url
    assert_response :success
  end

end
