class AjustarEstructuraTareas < ActiveRecord::Migration[8.1]
  def change
    rename_column :tareas, :nombre, :titulo

    remove_column :tareas, :region, :string
    remove_column :tareas, :rol, :string
    remove_column :tareas, :comp, :string

    add_column :tareas, :descripcion, :text
    add_column :tareas, :estado, :string
    add_column :tareas, :prioridad, :string
    add_column :tareas, :fecha_limite, :date
  end
end