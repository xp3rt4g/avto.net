class TownsController < ApplicationController
  before_action :set_town, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  # GET /towns
  # GET /towns.json
  def index
    @towns = Town.all
  end

  # GET /towns/1
  # GET /towns/1.json
  def show
  end

  # GET /towns/new
  def new
    @town = Town.new
  end

  # GET /towns/1/edit
  def edit
  end

  # POST /towns
  # POST /towns.json
  def create
    @town = Town.new(town_params)

    respond_to do |format|
      if @town.save
        format.html { redirect_to towns_path, notice: 'Town was successfully created.' }
        format.json { render :index, status: :created }
      else
        format.html { render :new }
        format.json { render json: @town.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /towns/1
  # PATCH/PUT /towns/1.json
  def update
    respond_to do |format|
      if @town.update(town_params)
        format.html { redirect_to towns_path, notice: 'Town was successfully updated.' }
        format.json { render :index, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @town.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /towns/1
  # DELETE /towns/1.json
  def destroy
    @users = User.where(town_id: @town.id)
    @users.each do |user|
      @cars = Car.where(user_id: user.id)
      @cars.each do |car|
        car.destroy
      end
      user.destroy
    end
    @town.destroy
    respond_to do |format|
      format.html { redirect_to towns_url, notice: 'Town was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town
      @town = Town.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def town_params
      params.require(:town).permit(:name, :post_number) 
    end
end
