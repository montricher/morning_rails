class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :purpose
      t.integer :price
      t.integer :year

      t.timestamps
    end
  end
end
