class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :poll, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true
    end
  end
end