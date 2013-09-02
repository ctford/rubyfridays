class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |c|
      c.string :first_name
      c.string :last_name
      c.integer :age
    end
  end
end