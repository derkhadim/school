class AddLaclasseIdToStudent < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :laclasse, foreign_key: true
  end
end
