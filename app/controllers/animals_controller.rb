class AnimalsController < ApplicationController
  def index
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(
      name: params[:name],
      leg_count: params[:leg_count],
      description: params[:description],
      meat_eater: params[:meat_eater])
    if @animal.save
      flash[:success] = "Animal Created!"
      redirect_to animal_path(@animal)
    else
      flash[:warning] = "Something went wrong!"
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end
end
