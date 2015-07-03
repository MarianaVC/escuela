# table groups created
class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    t.string :name
    t.integer :monday
    t.integer :tuesday
    t.integer :wednesday
    t.integer :thursday
    t.integer :friday
    t.string :time_class
    t.string :level
    t.timestamps
    end
  end
end
