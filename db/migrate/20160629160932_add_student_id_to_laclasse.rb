class AddStudentIdToLaclasse < ActiveRecord::Migration[5.0]
  def change
    add_reference :laclasses, :student, foreign_key: true
  end
end
