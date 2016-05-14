class CreateMovies < ActiveRecord::Base
  def change
    create table :movies do |t|
    	t.string :title
    	t.integer :year
    	t.string :genre
    	t.boolean :has_been_watched
  end
end