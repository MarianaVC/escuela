class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    t.string :nombre
    t.string :horario
    t.string :nivel
    t.timestamps
    end
  end
end
