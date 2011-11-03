class SpotsController < ApplicationController
  def index
    @spots = Spot.order('created_at DESC').page params[:page]
  end

end
