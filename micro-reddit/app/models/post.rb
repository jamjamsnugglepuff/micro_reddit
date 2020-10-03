class Post < ApplicationRecord

    validates :title, length: { minimum: 10 }
    validates :body, length: {minimum: 1, maximum: 500}
    
    belongs_to :user
    has_many :comments
end
