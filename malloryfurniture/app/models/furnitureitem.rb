class FurnitureItem
  attr_accessor :pid, :item, :description, :price, :condition, :dimension_w, :dimension_l, :dimension_h, :img_name, :quantity, :category

  def adj_price()
    puts "peanuts"
    # if @condition.to_s == "good"
    #   @price * 0.9
    # elsif @condition.to_s == "average"
    #   @price * 0.8
    # else
    #   @price
    # end
  end

end
