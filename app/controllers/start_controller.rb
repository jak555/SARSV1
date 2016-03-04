class StartController < ApplicationController
  def index
      if !params[:id].nil?
            session[:idcuest] = params[:id] 
      end
  end
end
