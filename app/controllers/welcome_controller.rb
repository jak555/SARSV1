class WelcomeController < ApplicationController
  def index
      session[:cont] = 0
      @paises = Paise.all
      @unis = Universidade.all
      session[:idu] = Digest::SHA1.hexdigest([Time.now, rand].join)
      session[:cont] = 0
      @i = session[:cont]
      @edad = params[:edad]
      @sexo = params[:sexo]
      @estado = params[:estado]
      @hijos = params[:hijos]
      @nacionalidad = params[:nacionalidad]
      @nivel = params[:nivel]
      @uni = params[:uni]
      @sem = params[:sem]
      @educ = params[:educ]
      @carrera = params[:carrera]
      @gradoobt = params[:gradoobt]
      if !@edad.nil? and !@sexo.nil? and !@estado.nil? and !@nacionalidad.nil? and !@nivel.nil?
          @info = Usuario.create({
        :edad => @edad.downcase,
        :sexo => @sexo.downcase,
        :estado => @estado.downcase,
        :hijos => @hijos.downcase,
        :nacionalidad => @nacionalidad.downcase,
        :nivel => @nivel.downcase,
        :universidad => @uni.downcase, 
        :educ => @educ.downcase, 
        :semestre => @sem.downcase,
        :carrera => @carrera,
        :gradoobt => @gradoobt.downcase,
        :idu => session[:idu]
        })
          @info.save();
          redirect_to preguntas_index_path
      end
  end
end
