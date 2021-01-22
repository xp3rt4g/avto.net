class GearboxesController < ApplicationController
  before_action :set_gearbox, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
  
  # GET /gearboxes
  # GET /gearboxes.json
  def index
    @gearboxes = Gearbox.all
  end

  # GET /gearboxes/1
  # GET /gearboxes/1.json
  def show
  end

  # GET /gearboxes/new
  def new
    @gearbox = Gearbox.new
  end

  # GET /gearboxes/1/edit
  def edit
  end

  # POST /gearboxes
  # POST /gearboxes.json
  def create
    @gearbox = Gearbox.new(gearbox_params)

    respond_to do |format|
      if @gearbox.save
        format.html { redirect_to @gearbox, notice: 'Gearbox was successfully created.' }
        format.json { render :show, status: :created, location: @gearbox }
      else
        format.html { render :new }
        format.json { render json: @gearbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gearboxes/1
  # PATCH/PUT /gearboxes/1.json
  def update
    respond_to do |format|
      if @gearbox.update(gearbox_params)
        format.html { redirect_to @gearbox, notice: 'Gearbox was successfully updated.' }
        format.json { render :show, status: :ok, location: @gearbox }
      else
        format.html { render :edit }
        format.json { render json: @gearbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gearboxes/1
  # DELETE /gearboxes/1.json
  def destroy
    @gearbox.destroy
    respond_to do |format|
      format.html { redirect_to gearboxes_url, notice: 'Gearbox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gearbox
      @gearbox = Gearbox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gearbox_params
      params.require(:gearbox).permit(:name) 
    end
end
