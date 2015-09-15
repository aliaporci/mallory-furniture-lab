require 'csv'
require 'furnitureitem'

class ProductsController < ApplicationController
  def home
  end

  def fetch_furnitureitems
    @furnitureitems = []

    CSV.foreach("mf_inventory.csv", headers: true) do |row|

      furnitureitem = FurnitureItem.new
      furnitureitem.pid = row.to_h["pid"]
      furnitureitem.item = row.to_h["item"]
      furnitureitem.description = row.to_h["description"]
      furnitureitem.price = row.to_h["price"]
      furnitureitem.condition = row.to_h["condition"]
      furnitureitem.dimension_w = row.to_h["dimension_w"]
      furnitureitem.dimension_l = row.to_h["dimension_l"]
      furnitureitem.dimension_h = row.to_h["dimension_h"]
      furnitureitem.img_name = row.to_h["img_name"]
      furnitureitem.quantity = row.to_h["quantity"]
      furnitureitem.category = row.to_h["category"]

      @furnitureitems << furnitureitem
    end
    @furnitureitems
  end

  def list
    @furnitureitems = fetch_furnitureitems

  end

  def detail
    @furnitureitems = fetch_furnitureitems

    @furnitureitem = @furnitureitems.find do |furnitureitem|
      furnitureitem.pid == params[:pid]
    end

  end
end
