class PikachusController < ApplicationController
  def index
    @pikachus = Pikachu.all
  end

  def new
    @pikachu = Pikachu.new
  end

  def create
    Pikachu.create(pikachu_params)
    redirect_to pikachus_path
  end

  def show
    @pikachu = Pikachu.find(params[:id])
  end

  def edit
    @pikachu = Pikachu.find(params[:id])
  end

  def update
    Pikachu.find(params[:id]).update(pikachu_params)
    redirect_to pikachus_path
  end

  def destroy
    Pikachu.find(params[:id]).destroy
    redirect_to pikachus_path
  end

  private
  def pikachu_params
    params.require(:pikachu).permit(:name, :color, :size, :image)
  end
end