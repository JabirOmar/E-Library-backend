class User < ActiveRecord::Base
    has_many :reviews
    has_many :reviews, through: :books
   
end