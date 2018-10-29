class AgenciesController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

private

def agency_params
  params.require(:agency)
  permit(:name, :address1, :address2, :city, :state, :zip, :phone)
end

end
