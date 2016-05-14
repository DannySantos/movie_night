class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :name
      t.boolean :is_decided
      t.date :date
    end    
  end
end