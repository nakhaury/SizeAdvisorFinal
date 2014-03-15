class SizeadviceController < ApplicationController

  def home
  end

  def input
  end

  require 'open-uri'

  def conditions
    @city123 = params[:city123] #must match input name on the page
    url = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{@city123}&units=imperial")
    @json_data = open(url).read # @sign makes it usable from other controllers (makes it global)
    @data = JSON.parse (@json_data)
  end


  def new
  end

  def about
  end

  def create
    product = Item.new
    product.name = params["name"]
    product.price = params["price"]
    product.description = params["description"]
    product.image_url = params["image_url"]
    product.save
    redirect_to "/products"
  end

  def edit
    @product = Item.find_by(:id => params[:product_id])
  end

  def update
    product = Item.find_by(:id => params[:product_id])
    product.name = params["name"]
    product.price = params["price"]
    product.description = params["description"]
    product.image_url = params["image_url"]
    product.save
    redirect_to "/products"
  end

end
