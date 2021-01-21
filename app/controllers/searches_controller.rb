class SearchesController < ApplicationController
  def show
    @search = Search.find(params[:id])
  end 

  def new 
      @search = Search.new
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

  def loadcars

  end

  def advanced
      @search = Search.new
      @manufacturers = Manufacturer.all
      @car_type = CarType.all
      @vehicle_status = VehicleStatus.all
  end

  def create
      @search = Search.create(search_params)
      redirect_to @search
  end 

  private

  def search_params
      params.require(:search).permit(:model_id, :name, :car_type_id, :ccm_max, :power_max, :manufacturer_id, :vehicle_status_id, :has_warranty, :has_guarranty, :oldtimer, :first_registration, :manufacture_year, :inspection_expiry, :mileage, :mileage_max, :number_of_owner_id, :vin, :price, :cash_discount, :last_price, :driveable, :damaged, :crashed, :service_book, :slovenian, :garaged, :never_crashed, :fuel_type_id, :gearbox_id, :power, :ccm, :doors, :seats, :color_id, :metallic, :consumption, :abs, :fourwheel, :airbags, :xenon, :led, :automatic_lights, :alarm, :headup, :emergency_brake, :ac, :digital_ac, :keyless_go, :start_stop, :cruise_control, :electric_parking_brake, :cd_player, :mp3_player, :usb, :dab, :navigation, :rear_camera, :towing_hook, :hill_assist, :pdc, :avaliable, :price_max, :year_max)
  end 
end
