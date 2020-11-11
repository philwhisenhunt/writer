class BlogPost < ApplicationRecord
    # belongs_to :user, optional
    has_many :tags
end
