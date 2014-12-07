class PhysicaladdressesController < ApplicationController
  before_action :set_physicaladdress, only: [:show, :edit, :update, :destroy]

  # GET /physicaladdresses
  # GET /physicaladdresses.json
  def index
    @physicaladdresses = Physicaladdress.all
  end

  # GET /physicaladdresses/1
  # GET /physicaladdresses/1.json
  def show
  end

  # GET /physicaladdresses/new
  def new
    @physicaladdress = Physicaladdress.new
  end

  # GET /physicaladdresses/1/edit
  def edit
  end

  # POST /physicaladdresses
  # POST /physicaladdresses.json
  def create
    @physicaladdress = Physicaladdress.new(physicaladdress_params)

    respond_to do |format|
      if @physicaladdress.save
        format.html { redirect_to @physicaladdress, notice: 'Physicaladdress was successfully created.' }
        format.json { render :show, status: :created, location: @physicaladdress }
      else
        format.html { render :new }
        format.json { render json: @physicaladdress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physicaladdresses/1
  # PATCH/PUT /physicaladdresses/1.json
  def update
    respond_to do |format|
      if @physicaladdress.update(physicaladdress_params)
        format.html { redirect_to @physicaladdress, notice: 'Physicaladdress was successfully updated.' }
        format.json { render :show, status: :ok, location: @physicaladdress }
      else
        format.html { render :edit }
        format.json { render json: @physicaladdress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physicaladdresses/1
  # DELETE /physicaladdresses/1.json
  def destroy
    @physicaladdress.destroy
    respond_to do |format|
      format.html { redirect_to physicaladdresses_url, notice: 'Physicaladdress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physicaladdress
      @physicaladdress = Physicaladdress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physicaladdress_params
      params.require(:physicaladdress).permit(:phyadd_id, :address, :city, :state, :zipcode, :project_id)
    end
end
