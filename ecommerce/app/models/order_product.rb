class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :user



  def calculate_actual_price
    current_coupon =self.get_coupon
     if (current_coupon.present?) && (self.is_validate_user_coupon current_coupon.id)
        self.actual_price = self.actual_price_with_coupon
        current_user.coupons << current_coupon
        
     else
        self.actual_price = actual_price_without_coupon
     end
    self
  end
  def is_validate_user_coupon coupon_id
    self.order.user.is_validate_user_coupon coupon_id
  end
  def get_coupon
    self.product.coupon
  end
  def get_discount_type
    self.coupon.discount_Type
  end

  def get_discount_value
      self.coupon.discount_value
  end
  def actual_price_with_coupon
    if self.get_discount_type == "fixed"
        return self.fixed_discount
    else
       return self.percentage_discount 
  end
  end
  def actual_price_without_coupon
    total =self.quantity.to_f * self.unit_price.to_f
    total
  end
  def fixed_discount
    total =  ( self.quantity.to_f * self.unit_price.to_f) - (self.get_discount_value.to_f) 
    total
  end
  def percentage_discount
    total =((1 -(self.get_discount_value.to_i/100.to_f)).to_f  + (self.quantity - 1) ) * self.unit_price.to_f
    total
  end
end
