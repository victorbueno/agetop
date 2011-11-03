class SiteController < ApplicationController
  def index
    @posts = Post.order("created_at DESC").limit(5)
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
  
  def recurso
    @recurso = Recurso.new
  end
  
  def print_recurso
    @recurso = Recurso.new(params[:recurso])
    if !@recurso.valid?
      flash.now[:warning] = 'TODOS os campos devem ser preenchidos.'
      render 'recurso'
      return
    end
    
    render :layout => false
    render :pdf => "print_recurso"
  end

end
