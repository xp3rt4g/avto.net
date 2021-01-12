class CarTypesController < ApplicationController
  before_action :set_car_type, only: [:show, :edit, :update, :destroy]

  # GET /car_types
  # GET /car_types.json
  def index
    @car_types = CarType.all
  end

  # GET /car_types/1
  # GET /car_types/1.json
  def show
  end

  # GET /car_types/new
  def new
    @car_type = CarType.new
  end

  # GET /car_types/1/edit
  def edit
  end

  # POST /car_types
  # POST /car_types.json
  def create
    @car_type = CarType.new(car_type_params)

    respond_to do |format|
      if @car_type.save
        format.html { redirect_to @car_type, notice: 'Car type was successfully created.' }
        format.json { render :show, status: :created, location: @car_type }
      else
        format.html { render :new }
        format.json { render json: @car_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_types/1
  # PATCH/PUT /car_types/1.json
  def update
    respond_to do |format|
      if @car_type.update(car_type_params)
        format.html { redirect_to @car_type, notice: 'Car type was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_type }
      else
        format.html { render :edit }
        format.json { render json: @car_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_types/1
  # DELETE /car_types/1.json
  def destroy
    @car_type.destroy
    respond_to do |format|
      format.html { redirect_to car_types_url, notice: 'Car type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_type
      @car_type = CarType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_type_params
      params.fetch(:car_type, {})
    end
end
