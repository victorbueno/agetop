class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  before_filter :load_defaults

  protected

  def layout_by_resource
    if devise_controller?
      "signin"
    else
      "application"
    end
  end
  
  def load_defaults
    @menu = Block.where(:name => "Menu").first.links.all
  end
end
