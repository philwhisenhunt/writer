class BlogPost < ApplicationRecord
    belongs_to :user
    has_one :content
    has_many :tags
end
