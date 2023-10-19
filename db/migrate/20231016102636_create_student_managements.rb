class CreateStudentManagements < ActiveRecord::Migration[6.0]
  def change
    create_table :student_managements do |t|
      t.string :first_name
      t.string :last_name
      t.integer :roll_num
      t.integer :age
      t.string :father_name

      t.timestamps
    end
  end
end
