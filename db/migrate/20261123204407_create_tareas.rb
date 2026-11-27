class CreateTareas < ActiveRecord::Migration[8.1]
  def change
    create_table :tareas do |t|
      t.string :nombre, null: false
      t.string :materia, null: false
      t.string :puntos, null: false
      t.timestamps
    end
  end
end
