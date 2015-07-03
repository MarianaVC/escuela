# dropped first version of table groups. 
class DropGroups < ActiveRecord::Migration
  def change
    drop_table :groups
  end
end
