class Comment < ApplicationRecord

    validates :text, length: {minimum: 1, maximum: 500}

    belongs_to :post
    belongs_to :user
end
