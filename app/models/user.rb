class User < ApplicationRecord
    has_many :reviews
    has_many :movies, through: :reviews

    validates_presence_of(:username, :password)
    validates_uniqueness_of(:username)
end
