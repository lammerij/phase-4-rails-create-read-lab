class PlantsController < ApplicationController
  # GET

  def index
    plants = Plant.all
    render json: plants
  end

  # GET

  def show 

    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  # POST

  def create
    plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
    render json: plant, status: :created
  end

end
