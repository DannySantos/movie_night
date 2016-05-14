class CreateUsers < ActiveRecord::Base
  def change
    create_table :users do |t|
      t.text :forename
      t.text :surname
      t.text :email
    end
  end
end