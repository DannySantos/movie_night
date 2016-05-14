class Polls < ActiveRecord::Base
  has_many :votes
end