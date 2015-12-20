class EmpregadorsController < ApplicationController
  before_action :set_empregador, only: [:show, :edit, :update, :destroy]

  # GET /empregadors
  # GET /empregadors.json
  def index
    @empregadors = Empregador.all
  end

  # GET /empregadors/1
  # GET /empregadors/1.json
  def show
  end

  # GET /empregadors/new
  def new
    @empregador = Empregador.new
  end

  # GET /empregadors/1/edit
  def edit
  end

  # POST /empregadors
  # POST /empregadors.json
  def create
    @empregador = Empregador.new(empregador_params)

    respond_to do |format|
      if @empregador.save
        format.html { redirect_to @empregador, notice: 'Empregador was successfully created.' }
        format.json { render :show, status: :created, location: @empregador }
      else
        format.html { render :new }
        format.json { render json: @empregador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empregadors/1
  # PATCH/PUT /empregadors/1.json
  def update
    respond_to do |format|
      if @empregador.update(empregador_params)
        format.html { redirect_to @empregador, notice: 'Empregador was successfully updated.' }
        format.json { render :show, status: :ok, location: @empregador }
      else
        format.html { render :edit }
        format.json { render json: @empregador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empregadors/1
  # DELETE /empregadors/1.json
  def destroy
    @empregador.destroy
    respond_to do |format|
      format.html { redirect_to empregadors_url, notice: 'Empregador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empregador
      @empregador = Empregador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empregador_params
      params.require(:empregador).permit(:nome, :telefone, :endereco, :cnpj)
    end
end
