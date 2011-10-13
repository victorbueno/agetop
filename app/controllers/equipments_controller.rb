class EquipmentsController < ApplicationController
  def spots
    @equips = Equipment.joins(:spots).order(:name).page params[:page]
  end

  def reviews
    @equips = Equipment.joins(:reviews).order(:name).page params[:page]
  end

end
