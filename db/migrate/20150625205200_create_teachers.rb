class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :last_name
      t.string :mother_name
      t.string :rfc
      t.string :phone
      t.string :email
      t.string :address
      t.string :birthday
      t.string :user_name
      t.string :password
      t.timestamps
    end
  end
end
