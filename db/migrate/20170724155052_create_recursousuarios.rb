class CreateRecursousuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :recursousuarios do |t|
      t.string :email
      t.string :cedula
      t.string :libro
      t.integer :idlibro
      t.timestamps
    end
  end
end
