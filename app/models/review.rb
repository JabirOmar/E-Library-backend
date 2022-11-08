class User < ActiveRecord::Base
    has_many :books
    has_many :reviews, through: :books
end
