class MailaddressesController < ApplicationController
  before_action :set_mailaddress, only: [:show, :edit, :update, :destroy]

  # GET /mailaddresses
  # GET /mailaddresses.json
  def index
    @mailaddresses = Mailaddress.all
  end

  # GET /mailaddresses/1
  # GET /mailaddresses/1.json
  def show
  end

  # GET /mailaddresses/new
  def new
    @mailaddress = Mailaddress.new
  end

  # GET /mailaddresses/1/edit
  def edit
  end

  # POST /mailaddresses
  # POST /mailaddresses.json
  def create
    @mailaddress = Mailaddress.new(mailaddress_params)

    respond_to do |format|
      if @mailaddress.save
        format.html { redirect_to @mailaddress, notice: 'Mailaddress was successfully created.' }
        format.json { render :show, status: :created, location: @mailaddress }
      else
        format.html { render :new }
        format.json { render json: @mailaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailaddresses/1
  # PATCH/PUT /mailaddresses/1.json
  def update
    respond_to do |format|
      if @mailaddress.update(mailaddress_params)
        format.html { redirect_to @mailaddress, notice: 'Mailaddress was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailaddress }
      else
        format.html { render :edit }
        format.json { render json: @mailaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailaddresses/1
  # DELETE /mailaddresses/1.json
  def destroy
    @mailaddress.destroy
    respond_to do |format|
      format.html { redirect_to mailaddresses_url, notice: 'Mailaddress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailaddress
      @mailaddress = Mailaddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailaddress_params
      params.require(:mailaddress).permit(:mailadd_id, :address, :city, :state, :zipcode, :project_id)
    end
end
