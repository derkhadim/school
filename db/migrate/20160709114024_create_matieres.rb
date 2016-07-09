class CreateMatieres < ActiveRecord::Migration[5.0]
  def change
    create_table :matieres do |t|
      t.integer :maths
      t.integer :pc
      t.integer :svt
      t.integer :anglais
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
