class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def average_rating 
        total_ratings = self.reviews.map(&:rating).sum
        total_ratings / self.reviews.length
    end
end