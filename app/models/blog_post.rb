class BlogPost < ApplicationRecord
    belongs_to :user
    has_many :tags
    has_many :comments
end
