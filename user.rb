class User < ActiveRecord::Base
  has_many :suggested_movies, class_name: "Movie", foreign_key: :suggester_id, inverse_of: :suggester
  has_many :votes
  has_many :movies, through: :votes
  has_many :polls, through: :votes
end


# User.find(3).movies = Movies that user 3 has voted for

