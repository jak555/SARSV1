class PregcuestController < ApplicationController
  def index
      @pal = Palabra.where(:cuestionario => CGI.escapeHTML(params[:id]))
      session[:idcuestpal] = CGI.escapeHTML(params[:id])
  end
  def delete
      Palabra.delete(CGI.escapeHTML(params[:id]))
      redirect_to :controller => 'pregcuest', :action => 'index', :id => session[:idcuestpal]
  end
end
