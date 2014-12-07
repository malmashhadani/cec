class OriginatorsController < ApplicationController
  before_action :set_originator, only: [:show, :edit, :update, :destroy]

  # GET /originators
  # GET /originators.json
  def index
    @originators = Originator.all
  end

  # GET /originators/1
  # GET /originators/1.json
  def show
  end

  # GET /originators/new
  def new
    @originator = Originator.new
  end

  # GET /originators/1/edit
  def edit
  end

  # POST /originators
  # POST /originators.json
  def create
    @originator = Originator.new(originator_params)

    respond_to do |format|
      if @originator.save
        format.html { redirect_to @originator, notice: 'Originator was successfully created.' }
        format.json { render :show, status: :created, location: @originator }
      else
        format.html { render :new }
        format.json { render json: @originator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /originators/1
  # PATCH/PUT /originators/1.json
  def update
    respond_to do |format|
      if @originator.update(originator_params)
        format.html { redirect_to @originator, notice: 'Originator was successfully updated.' }
        format.json { render :show, status: :ok, location: @originator }
      else
        format.html { render :edit }
        format.json { render json: @originator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /originators/1
  # DELETE /originators/1.json
  def destroy
    @originator.destroy
    respond_to do |format|
      format.html { redirect_to originators_url, notice: 'Originator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_originator
      @originator = Originator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def originator_params
      params.require(:originator).permit(:originator_id, :name, :phonenumber, :phonedescription, :email, :emaildescription, :faxnumber)
    end
end
