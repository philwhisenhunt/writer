class BlogPost < ApplicationRecord
    has_one :content
    belongs_to :user
end
