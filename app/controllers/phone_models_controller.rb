class PhoneModelsController < ApplicationController
    before_action :set_phone_models, only: [:show, :edit, :update, :destroy]

  def index
    @phone_models = PhoneModel.all
  end

  def show
  end

  def new
    @phone_model = PhoneModel.new
  end

  def create
    @phone_model = PhoneModel.new(phone_model_params)

    if @phone_model.save
      head :created
    else
      render json:@phone_model.errors.full_messages, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    @phone_model.destroy
  end


  private

  def set_phone_models
   @phone_model = PhoneModel.find(params[:id])
  end

  def phone_model_params
    params.require(:phone_model).permit(:name)
  end
end
