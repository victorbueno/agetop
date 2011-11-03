class EquipmentsController < ApplicationController

  def reviews
    @equips = Equipment.joins(:reviews).order(:name).page params[:page]
  end

end
