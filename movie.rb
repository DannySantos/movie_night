class Movie < ActiveRecord::Base
  belongs_to :suggester, class_name: "User", foreign_key: :suggester_id, inverse_of: :suggested_movies
  has_many :votes
end