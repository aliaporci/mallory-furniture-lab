class FurnitureItem
  attr_accessor :pid, :item, :description, :price, :condition, :dimension_w, :dimension_l, :dimension_h, :img_name, :quantity, :category

  def adj_price
    if condition == "good"
      price.to_i * 0.9
    elsif condition == "average"
      price.to_i * 0.8
    else
      price

    end
    # if condition == "good"
    #   puts "peanuts"
    #   # price.to_i * 0.9
    # # elsif condition == "average"
    #   # price.to_i * 0.8
    # else
    #   price
    # end
  end

  # def dicksadj_price
  #   condition == "good"
  # end
  def clearance?
    if ["good", "average"].include? condition
      " New Clearance Price!!!"
    end
  end

end
