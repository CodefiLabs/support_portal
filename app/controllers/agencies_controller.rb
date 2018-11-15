class AgenciesController < ApplicationController
before_action :set_agency, only: [:show, :edit, :update, :destroy]
skip_before_action :verify_authenticity_token,only:[:create]

  def index
    @agencies = Agency.all
  end

  def show
    @agency = Agency.find(params[:id])
  end

  def edit
  end

  def update
    if @agency.update(agency_params)
      redirect_to @agency, notice: "Information successfully updated."
    else
      render :edit
    end
  end

  def new
    @agency = Agency.new
  end

  def create
    @agency = Agency.new(agency_params)
    respond_to do |format|
      @agency.save
      format.js
#Need to add something here to ignore requests to create duplicate connections (some way to avoid throwing errors for end user, maybe an if-statement?)
    params["selection"].map{|x| AgenciesClient.create(clients_id: x.to_i, agencies_id: @agency.id)}
    end
  end

  def destroy
      @agency.destroy
      redirect_to agencies_url, alert: "Agency successfully deleted."
  end

private

  def agency_params
    params.require(:agency)
    .permit(:address1, :address2, :city, :state, :zip, :name, :phone)
  end

  def set_agency
    @agency = Agency.find(params[:id])
  end

end
