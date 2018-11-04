class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def show
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to @client, notice: "Information successfully updated."
    else
      render :edit
    end
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client, notice: "Client successfully created."
    else
      render :new
    end
  end

  def destroy
    def destroy
      @client.destroy
      redirect_to root_url, alert: "Client successfully deleted."
    end
  end

private

  def client_params
    params.require(:client).
      permit(:name, :address1, :address2, :city, :state, :zip, :phone)
  end

  def set_client
    @client = Client.find(params[:id])
  end

  end
