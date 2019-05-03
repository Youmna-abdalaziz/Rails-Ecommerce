class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product


  def fixed_discount
    total =  ( self.quantity.to_f * self.unit_price.to_f) - (self.product.coupon.get_discount_value.to_f) 
    total
  end
  def percentage_discount
    total =((1 -(self.product.coupon.get_discount_value.to_i/100.to_f)).to_f  + (self.quantity - 1) ) * self.unit_price.to_f
    total
  end



  def calculate_actual_price
    if self.product.coupon.get_discount_type == "fixed"
        return self.fixed_discount
    else
       return self.percentage_discount 
    end
  end
end
