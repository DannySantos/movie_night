class CreatePolls < ActiveRecord::Base
  def change
    create_table :polls do |p|
      p.string :name
      p.boolean :is_decided
      p.date :date   
    end
  end
end