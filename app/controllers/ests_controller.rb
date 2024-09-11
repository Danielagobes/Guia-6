class EstsController < ApplicationController
  before_action :set_est, only: [:show, :edit, :update, :destroy]

  # GET /ests
  # GET /ests.json
  def index
    @ests = Est.all
  end

  # GET /ests/1
  # GET /ests/1.json
  def show
  end

  # GET /ests/new
  def new
    @est = Est.new
  end

  # GET /ests/1/edit
  def edit
  end

  # POST /ests
  # POST /ests.json
  def create
    @est = Est.new(est_params)

    respond_to do |format|
      if @est.save
        format.html { redirect_to @est, notice: 'Est was successfully created.' }
        format.json { render :show, status: :created, location: @est }
      else
        format.html { render :new }
        format.json { render json: @est.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ests/1
  # PATCH/PUT /ests/1.json
  def update
    respond_to do |format|
      if @est.update(est_params)
        format.html { redirect_to @est, notice: 'Est was successfully updated.' }
        format.json { render :show, status: :ok, location: @est }
      else
        format.html { render :edit }
        format.json { render json: @est.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ests/1
  # DELETE /ests/1.json
  def destroy
    @est.destroy
    respond_to do |format|
      format.html { redirect_to ests_url, notice: 'Est was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_est
      @est = Est.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def est_params
      params.require(:est).permit(:nombres, :apellidos, :carrera, :carnet, :nacimiento, :celular)
    end
end
