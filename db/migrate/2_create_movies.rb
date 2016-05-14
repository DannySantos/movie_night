class CreateMovies < ActiveRecord::Base
  def change
    create table :movies do |t|
    	t.title :title
    	t.year :year
    	t.genre :genre
  end
end