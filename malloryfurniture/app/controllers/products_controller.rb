require 'csv'

class ProductsController < ApplicationController
  def home
  end

  def list
    @products = []

    CSV.foreach("mf_inventory.csv", headers: true)
  end

  def detail
  end
end
