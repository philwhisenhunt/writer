class BlogPost < ApplicationRecord
    belongs_to :user
    has_one :content
end
