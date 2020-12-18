class BlogPost < ApplicationRecord
    # belongs_to :user, optional
    has_many :tags
    has_many :comments
end
