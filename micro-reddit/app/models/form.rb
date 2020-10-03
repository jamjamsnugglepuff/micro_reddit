class Form < ApplicationRecord

    validates :description, :name, length: { minimum: 10}
    validates :description, length: { maximum: 150}
    validates :name, length: { maximum: 32}
    has_many :posts
    has_many :admins
    has_many :users, through: :admin
end
