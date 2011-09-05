class PagesController < ApplicationController
  def show
    @menu = Block.where(:name => "Menu").first.links.all
  end

end
