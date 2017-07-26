class CreateRecursos < ActiveRecord::Migration[5.1]
  def change
    create_table :recursos do |t|
      t.string :titulo
      t.string :nombre
      t.string :editorial
      t.timestamps
    end
  end
end
