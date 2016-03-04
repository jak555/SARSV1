class PalabrasController < ApplicationController
  def index
  end

  def show
      palabras = params[:myInputs]
      palabras.each do |palabra|
          pal = Palabra.new()
          pal.palabra = palabra
          pal.cuestionario = session[:idcuestpal]
          pal.save()
      end
  end
end
