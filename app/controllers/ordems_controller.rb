class OrdemsController < ApplicationController
  before_action :set_ordem, only: [:show, :edit, :update, :destroy]

  # GET /ordems
  # GET /ordems.json
  def index
    @ordems = Ordem.all
  end

  # GET /ordems/1
  # GET /ordems/1.json
  def show
  end

  # GET /ordems/new
  def new
    @ordem = Ordem.new
  end

  # GET /ordems/1/edit
  def edit
  end

  # POST /ordems
  # POST /ordems.json
  def create
    @ordem = Ordem.new(ordem_params)

    respond_to do |format|
      if @ordem.save
        format.html { redirect_to @ordem, notice: 'Ordem was successfully created.' }
        format.json { render :show, status: :created, location: @ordem }
      else
        format.html { render :new }
        format.json { render json: @ordem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordems/1
  # PATCH/PUT /ordems/1.json
  def update
    respond_to do |format|
      if @ordem.update(ordem_params)
        format.html { redirect_to @ordem, notice: 'Ordem was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordem }
      else
        format.html { render :edit }
        format.json { render json: @ordem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordems/1
  # DELETE /ordems/1.json
  def destroy
    @ordem.destroy
    respond_to do |format|
      format.html { redirect_to ordems_url, notice: 'Ordem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem
      @ordem = Ordem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordem_params
      params.require(:ordem).permit(:equipamento, :defeito, :marca, :descricao, :status, :valor, :cliente_id, :empregado_id)
    end
end
