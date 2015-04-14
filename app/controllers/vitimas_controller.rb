class VitimasController < ApplicationController
  before_action :set_vitima, only: [:show, :edit, :update, :destroy]

  # GET /vitimas
  # GET /vitimas.json
  def index
    @vitimas = Vitima.all
  end

  # GET /vitimas/1
  # GET /vitimas/1.json
  def show
  end

  # GET /vitimas/new
  def new
    @vitima = Vitima.new
  end

  # GET /vitimas/1/edit
  def edit
  end

  # POST /vitimas
  # POST /vitimas.json
  def create
    @vitima = Vitima.new(vitima_params)

    respond_to do |format|
      if @vitima.save
        format.html { redirect_to @vitima, notice: 'Vitima was successfully created.' }
        format.json { render :show, status: :created, location: @vitima }
      else
        format.html { render :new }
        format.json { render json: @vitima.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vitimas/1
  # PATCH/PUT /vitimas/1.json
  def update
    respond_to do |format|
      if @vitima.update(vitima_params)
        format.html { redirect_to @vitima, notice: 'Vitima was successfully updated.' }
        format.json { render :show, status: :ok, location: @vitima }
      else
        format.html { render :edit }
        format.json { render json: @vitima.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitimas/1
  # DELETE /vitimas/1.json
  def destroy
    @vitima.destroy
    respond_to do |format|
      format.html { redirect_to vitimas_url, notice: 'Vitima was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vitima
      @vitima = Vitima.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vitima_params
      params.require(:vitima).permit(:sexo, :idade, :email, :senha)
    end
end
