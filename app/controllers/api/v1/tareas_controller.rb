class Api::V1::TareasController < ApplicationController
  # GET: listar tareas
  def index
    @tareas = Tarea.all

    if params[:estado].present?
      @tareas = @tareas.where(estado: params[:estado])
    end

    render json: @tareas, status: :ok
  end

  # GET: consultar una tarea
  def show
    puts "ENTRO A LA FUNNCION"
    @tarea = Tarea.find(params[:id])
    render json: @tarea, status: :ok
  end

  # POST: crear tarea
  def create
    @tarea = Tarea.new(tarea_params)

    if @tarea.save
      render json: @tarea, status: :created
    else
      render json: { errores: @tarea.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # PUT: actualizar tarea
  def update
    puts "ENTRO A LA FUNCION PUT"
    @tarea = Tarea.find(params[:id])
    if @tarea.update(tarea_params)
      render json: @tarea, status: :ok
    else
      render json: { errores: @tarea.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # DELETE: eliminar tarea
  def destroy
    puts "ENTRO A LA FUNCION DELETE"
    @tarea = Tarea.find(params[:id])
    @tarea.destroy
    render json: { message: 'Tarea eliminada correctamente' }, status: :accepted
  end

    
    def saludar
        render json: { message: '¡Hola desde la API!' }, status: :ok
    end

  private                                                             

  def tarea_params
    params.require(:tarea).permit(
      :titulo,
      :descripcion,
      :estado,
      :prioridad,
      :fecha_limite
    )
  end

end