class Tarea < ApplicationRecord  # modelo

  validates :titulo, presence: true
  validates :descripcion, presence: true
  validates :estado, presence: true
  validates :prioridad, presence: true
  validates :fecha_limite, presence: true

  validates :estado,
    inclusion: { in: %w[pendiente en_progreso completada] }

  validates :prioridad,
    inclusion: { in: %w[baja media alta] }

end