class RepairsController < ApplicationController
  before_action :set_repair, only: [:show, :edit, :update, :destroy]

  def index
    @repairs = Repair.order(:deadline)
  end

  def show
  end

  def new
    @repair = Repair.new
    @client = Client.new
    @phone = PhoneModel.new
  end

  def create
    @repair = Repair.new(repair_params)

    if @repair.save
      redirect_to @repair, notice: 'Repair was successfully created.'
    else 
      render :new
    end
  end

  def edit
  end

  def destroy
    @repair.destroy
  end

  def date
    self.Date.commercial
  end


  private

  def set_repair
   @repair = Repair.find(params[:id])
  end

  def repair_params
    params.require(:repair).permit(:phone_model_id, :client_id, :status, :imei, :servicemac_id, :max_price, :cost, :price, :deadline)
  end

end
