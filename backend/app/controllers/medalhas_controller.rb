class MedalhasController < ApplicationController
  before_action :set_medalha, only: [:show, :edit, :update, :destroy]

  # GET /medalhas
  # GET /medalhas.json
  def index
    @medalhas = Medalha.all
  end

  # GET /medalhas/1
  # GET /medalhas/1.json
  def show
  end

  # GET /medalhas/new
  def new
    @medalha = Medalha.new
  end

  # GET /medalhas/1/edit
  def edit
  end

  # POST /medalhas
  # POST /medalhas.json
  def create
    @medalha = Medalha.new(medalha_params)

    respond_to do |format|
      if @medalha.save
        format.html { redirect_to @medalha, notice: 'Medalha was successfully created.' }
        format.json { render :show, status: :created, location: @medalha }
      else
        format.html { render :new }
        format.json { render json: @medalha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medalhas/1
  # PATCH/PUT /medalhas/1.json
  def update
    respond_to do |format|
      if @medalha.update(medalha_params)
        format.html { redirect_to @medalha, notice: 'Medalha was successfully updated.' }
        format.json { render :show, status: :ok, location: @medalha }
      else
        format.html { render :edit }
        format.json { render json: @medalha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medalhas/1
  # DELETE /medalhas/1.json
  def destroy
    @medalha.destroy
    respond_to do |format|
      format.html { redirect_to medalhas_url, notice: 'Medalha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medalha
      @medalha = Medalha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medalha_params
      params.require(:medalha).permit(:titulo)
    end
end
