class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.string :mother_name
      t.string :rfc
      t.string :phone
      t.string :mail
      t.string :user_name
      t.string :password
      t.string :birthday
      t.timestamps
    end
  end
end
