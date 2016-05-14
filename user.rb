class User < ActiveRecord::Base
  has_many :suggested_movies, class_name: "Movie", foreign_key: :suggester_id, inverse_of: :suggester
end