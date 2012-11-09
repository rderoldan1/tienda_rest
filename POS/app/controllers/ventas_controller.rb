class VentasController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:ipn_notification]
  def index
   # flash[:notice] = 'Welcome to the site!'
    @productos = get_httparty("productos")
  end

  def new
    params.delete(:authenticity_token)
    @compra = post_httparty("ventas", params)
    flash[:notice]= "Eres el feliz comprador de #{@compra["venta"]["cantidad"]} deliciosas #{@compra["producto"]["nombre"] }
        por un valor de #{(@compra["venta"]["precio"])}"
    redirect_to root_path
  end

  def show

  end

  def create
    puts params[:venta]
  end

  private

  def get_httparty(method)
    JSON.parse(HTTParty.get("http://localhost:3000/#{method}.json").body)
  end

  def post_httparty(method, params)
    JSON.parse(HTTParty.post("http://localhost:3000/#{method}.json", :body => params).body)
  end
end
