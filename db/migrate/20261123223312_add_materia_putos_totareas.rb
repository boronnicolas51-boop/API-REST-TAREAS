class AddMateriaPutosTotareas < ActiveRecord::Migration[8.1]
  def change
    add_column :tareas, :materia, :string
    add_column :tareas, :puntos, :string
  end
end