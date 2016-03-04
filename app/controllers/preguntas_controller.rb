class PreguntasController < ApplicationController
  def guardar
      if !params[:orden].nil?
          @pregs = session[:preguntas]
          @clasif = params[:orden]
          usuario = Usuario.where(:idu => session[:idu]).first
          @pregs.zip(@clasif).each do |pregunta, clasificacion|
              @info = Respuestum.create({
                  :palabra => session[:pal],
                  :usuario => usuario.id,
                  :respuesta => pregunta,
                  :clasificacion => clasificacion
              })
          @info.save();
          end
              if session[:cont] == (Palabra.where(:cuestionario => session[:idcuest]).count)-1
                  redirect_to despedida_index_path and return
              else
                session[:cont] += 1
                  redirect_to preguntas_index_path and return
              end
      end
  end

  def index
      @cantidad = Cuestionario.find(session[:idcuest]).respuestas
      @pal = Palabra.where(:cuestionario => session[:idcuest])
  end

  def ordenar
      if !params[:pregunta].nil?
          session[:preguntas] = params[:pregunta]
      end
      @idu = session[:idu]
  end
end
