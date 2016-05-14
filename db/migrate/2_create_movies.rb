class CreateMovies < ActiveRecord::Migration
  def change
    create table :movies do |t|
    	t.string :title
    	t.integer :year
    	t.string :genre
    	t.boolean :has_been_watched
      t.references :suggester, index: true
    end
  end
end