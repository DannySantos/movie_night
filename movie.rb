class Movies < ActiveRecord::Base
  has_many :votes
end