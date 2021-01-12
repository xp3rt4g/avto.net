class NumberOfOwnersController < ApplicationController
  before_action :set_number_of_owner, only: [:show, :edit, :update, :destroy]

  # GET /number_of_owners
  # GET /number_of_owners.json
  def index
    @number_of_owners = NumberOfOwner.all
  end

  # GET /number_of_owners/1
  # GET /number_of_owners/1.json
  def show
  end

  # GET /number_of_owners/new
  def new
    @number_of_owner = NumberOfOwner.new
  end

  # GET /number_of_owners/1/edit
  def edit
  end

  # POST /number_of_owners
  # POST /number_of_owners.json
  def create
    @number_of_owner = NumberOfOwner.new(number_of_owner_params)

    respond_to do |format|
      if @number_of_owner.save
        format.html { redirect_to @number_of_owner, notice: 'Number of owner was successfully created.' }
        format.json { render :show, status: :created, location: @number_of_owner }
      else
        format.html { render :new }
        format.json { render json: @number_of_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /number_of_owners/1
  # PATCH/PUT /number_of_owners/1.json
  def update
    respond_to do |format|
      if @number_of_owner.update(number_of_owner_params)
        format.html { redirect_to @number_of_owner, notice: 'Number of owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @number_of_owner }
      else
        format.html { render :edit }
        format.json { render json: @number_of_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /number_of_owners/1
  # DELETE /number_of_owners/1.json
  def destroy
    @number_of_owner.destroy
    respond_to do |format|
      format.html { redirect_to number_of_owners_url, notice: 'Number of owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number_of_owner
      @number_of_owner = NumberOfOwner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def number_of_owner_params
      params.fetch(:number_of_owner, {})
    end
end
