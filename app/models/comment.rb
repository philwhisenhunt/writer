class Comment < ApplicationRecord
    belongs_to: :BlogPost
    has_one: user
end
