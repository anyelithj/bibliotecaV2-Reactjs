class RecursosController < ApplicationController
  before_action :set_recurso, only: [:show, :edit, :update, :destroy]

  # GET /recursos
  # GET /recursos.json
  #busca la carpeta para traer todos de la base de datos
  def index
    @recursos = Recurso.all
  end

  # GET /recursos/1
  # GET /recursos/1.json
  #esto inicicializa los recursos
  def show
  end

  # GET /recursos/new
  #crea un nuevo recurso para almacenar datos
  def new
    @recurso = Recurso.new
  end

  # GET /recursos/1/edit
  ## aqui trae los datos para poder editar los datos
  def edit
  end

  # POST /recursos
  # POST /recursos.json
  #definimos un metodo que nos crea un recurso donde  nos recibe parametros  y guarada los datos
  def create
    @recurso = Recurso.new(recurso_params)

    respond_to do |format|
      if @recurso.save
        format.html { redirect_to @recurso, notice: 'Recurso was successfully created.' }
        format.json { render :show, status: :created, location: @recurso }
      else
        format.html { render :new }
        format.json { render json: @recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recursos/1
  # PATCH/PUT /recursos/1.json
  #definimos un metdo donde   podemos  actualizar los datos de la base de datos
  def update
    respond_to do |format|
      if @recurso.update(recurso_params)
        format.html { redirect_to @recurso, notice: 'Recurso was successfully updated.' }
        format.json { render :show, status: :ok, location: @recurso }
      else
        format.html { render :edit }
        format.json { render json: @recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recursos/1
  # DELETE /recursos/1.json
  # definimos un metodo para eliminar los datos  en la bd
  def destroy
    @recurso.destroy
    respond_to do |format|
      format.html { redirect_to recursos_url, notice: 'Recurso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

# definimos umetodo privado  para llamar y enviar datos  que recibe un parametro id
  private

    def set_recurso
      @recurso = Recurso.find(params[:id])
    end


    # definimos los parameros que recibimos  para poder realizar las acciones anteriores elimimar en listar datos  y guardar
    def recurso_params
      params.require(:recurso).permit(:id, :titulo, :nombre, :editorial)
    end
end
