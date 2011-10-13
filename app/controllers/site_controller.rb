class SiteController < ApplicationController
  def index
    
  end
  
  def defesa_previa
    @defesa = Defesa.new
  end
  
  def print_defesa_previa
    @defesa = Defesa.new(params[:defesa])
    if !@defesa.valid?
      flash.now[:warning] = 'TODOS os campos devem ser preenchidos.'
      render 'defesa_previa'
      return
    end
    
    render :layout => false
    render :pdf => "print_defesa_previa"
  end

end
