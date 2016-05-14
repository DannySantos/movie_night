# Overriding ActiveRecord's Naming Conventions

class User
  has_many :suggested_movies,       # This is our custom name that makes more sense. Name would usually just be :movies, named                                         after the relevant class
    class_name: "Movie",            # Because you choose a new name instead of class name we need to let it know to go to the                                       Movie class
    foreign_key: :suggester_id,     # Because the belongs_to below is called :suggester
    inverse_of: :suggester          # Links it to the belongs_to
end

class Movie
  belongs_to :suggester,            # Also renaming this
    class_name: "User",             # As above
    foreign_key: :suggester_id,     # As above
    inverse_of: :suggested_movies   # Links it to the has_many
end