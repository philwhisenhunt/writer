class CreateBlogPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_posts do |t|
      # add_reference :blog_posts, :user, foreign_key: true
      t.string :title
      t.text :post_content
      t.timestamps
    end
  end
end
