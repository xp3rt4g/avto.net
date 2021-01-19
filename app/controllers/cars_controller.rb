class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [ :show ]
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = current_user.cars.build
    @manufacturers = Manufacturer.all
    @models = []
    if params[:manufacturer].present?
      @models = Manufacturer.find(params[:manufacturer]).models
    end
    if request.xhr?
      respond_to do |format|
        format.json {
          render json: {models: @models}
        }
      end
    end
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = current_user.cars.build(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:user_id, :model_id, :name, :car_type_id, :vehicle_status_id, :has_warranty, :has_guarranty, :oldtimer, :first_registration, :manufacture_year, :inspection_expiry, :mileage, :number_of_owner_id, :vin, :price, :cash_discount, :last_price, :driveable, :damaged, :crashed, :service_book, :slovenian, :garaged, :never_crashed, :fuel_type_id, :gearbox_id, :power, :ccm, :doors, :seats, :color_id, :metallic, :consumption, :abs, :fourwheel, :airbags, :xenon, :led, :automatic_lights, :alarm, :headup, :emergency_brake, :ac, :digital_ac, :keyless_go, :start_stop, :cruise_control, :electric_parking_brake, :cd_player, :mp3_player, :usb, :dab, :navigation, :rear_camera, :towing_hook, :hill_assist, :pdc, :comment, :avaliable, :image_url)
    end

    def set_s3_direct_post
      @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
    end
end
