class RecursousuariosController < ApplicationController
  before_action :set_recursousuario, only: [:show, :edit, :update, :destroy]

  # GET /recursousuarios
  # GET /recursousuarios.json
  def index
    @recursousuarios = Recursousuario.all
  end

  # GET /recursousuarios/1
  # GET /recursousuarios/1.json
  def show
  end

  # GET /recursousuarios/new
  def new
    @recursousuario = Recursousuario.new
  end

  # GET /recursousuarios/1/edit
  def edit
  end

  # POST /recursousuarios
  # POST /recursousuarios.json
  def create
    @recursousuario = Recursousuario.new(recursousuario_params)

    respond_to do |format|
      if @recursousuario.save
        format.html { redirect_to @recursousuario, notice: 'Recursousuario was successfully created.' }
        format.json { render :show, status: :created, location: @recursousuario }
      else
        format.html { render :new }
        format.json { render json: @recursousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recursousuarios/1
  # PATCH/PUT /recursousuarios/1.json
  def update
    respond_to do |format|
      if @recursousuario.update(recursousuario_params)
        format.html { redirect_to @recursousuario, notice: 'Recursousuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @recursousuario }
      else
        format.html { render :edit }
        format.json { render json: @recursousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recursousuarios/1
  # DELETE /recursousuarios/1.json
  def destroy
    @recursousuario.destroy
    respond_to do |format|
      format.html { redirect_to recursousuarios_url, notice: 'Recursousuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recursousuario
      @recursousuario = Recursousuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recursousuario_params
      params.require(:recursousuario).permit(:id, :email, :cedula, :libro, :idlibro)
    end
end
