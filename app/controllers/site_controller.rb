class SiteController < ApplicationController
  def index
    @menu = Block.where(:name => "Menu").first.links.all
  end

end
