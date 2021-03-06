class User < ApplicationRecord
    validates :rating, :user_name, :password, :email_address, :address, :city, :country, presence: true
    validates :first_name, :last_name, :date_of_birth, :gender, presence: true
    validates :email_address, uniqueness: { scope: :email_address, message: "A user with that email already exists."
    }
    validates :user_name, uniqueness: { scope: :user_name, message: "That user name is already in use!"}
    validates :first_name, :last_name, length: {minimum: 2, maximum:32}
    validates :email_address, length: {minimum: 3, maximum:128}
    validates :password, length: {minimum: 8, maximum:128}
    validates :address, :country, :city, length: {maximum:128}
    validates :about, length: {maximum:255}
    validates :gender, length: {maximum:1}
    validates :email_address, format: {
        with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ , message: "example email is micro_redit@gmail.com.au"
    }

    has_many :posts
    has_many :comments
    has_many :admins
    has_many :forms, through: :admin
end
