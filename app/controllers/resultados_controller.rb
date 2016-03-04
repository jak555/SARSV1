class ResultadosController < ApplicationController
  def index
      id = params[:id]
      @palabras = Palabra.where(:cuestionario => id)
      
  end
end
