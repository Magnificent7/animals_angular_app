class Api::V1::AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render 'index.json.jbuilder'
  end
  def create
    @animal = Animal.new(
      name: params[:name],
      leg_count: params[:leg_count],
      description: params[:description],
      meat_eater: params[:meat_eater])
    if @animal.save
      render :show
    else
      render json: {errors: @animal.errors.full_messages}, status: 422
    end
  end
  def show
    @animal = Animal.find(params[:id])
    render 'show.json.jbuilder'
  end
end
