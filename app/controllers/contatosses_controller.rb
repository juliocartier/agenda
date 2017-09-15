class ContatossesController < ApplicationController
  before_action :set_contatoss, only: [:show, :edit, :update, :destroy]

  # GET /contatosses
  # GET /contatosses.json
  def index
    @contatosses = Contatoss.all
  end

  # GET /contatosses/1
  # GET /contatosses/1.json
  def show
  end

  # GET /contatosses/new
  def new
    @contatoss = Contatoss.new
  end

  # GET /contatosses/1/edit
  def edit
  end

  # POST /contatosses
  # POST /contatosses.json
  def create
    @contatoss = Contatoss.new(contatoss_params)

    respond_to do |format|
      if @contatoss.save
        format.html { redirect_to @contatoss, notice: 'Contatoss was successfully created.' }
        format.json { render :show, status: :created, location: @contatoss }
      else
        format.html { render :new }
        format.json { render json: @contatoss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contatosses/1
  # PATCH/PUT /contatosses/1.json
  def update
    respond_to do |format|
      if @contatoss.update(contatoss_params)
        format.html { redirect_to @contatoss, notice: 'Contatoss was successfully updated.' }
        format.json { render :show, status: :ok, location: @contatoss }
      else
        format.html { render :edit }
        format.json { render json: @contatoss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contatosses/1
  # DELETE /contatosses/1.json
  def destroy
    @contatoss.destroy
    respond_to do |format|
      format.html { redirect_to contatosses_url, notice: 'Contatoss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contatoss
      @contatoss = Contatoss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contatoss_params
      params.require(:contatoss).permit(:nome, :endereco, :email, :dataNascimento)
    end
end
