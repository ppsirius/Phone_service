class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @client, notice: 'Client was successfully created.'
    else 
      render :new
    end
  end

  def edit
  end

  def destroy
    @client.destroy
  end


  private

  def set_client
   @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:last_name, :first_name, :phone_number, :email)
  end

end
