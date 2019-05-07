class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :user

  def product_price
    product.price
  end

  def product_name
    product.title
  end

  def product_quantity
    product.quantity_in_stock

  end

  def user_coupons
    @user_coupons= current_user.coupons
  end

  def calculate_actual_price
    current_coupon =self.get_coupon
     if (current_coupon.present?) && (self.is_validate_user_coupon current_coupon.id) && (self.is_valide_coupon)
        puts(self.is_validate_user_coupon current_coupon.id)
        self.actual_price = self.actual_price_with_coupon
        self.get_user_coupons << current_coupon  
        current_coupon.current_usage += 1
        current_coupon.save
     else
        self.actual_price = actual_price_without_coupon        
     end
    self
  end
  def is_validate_user_coupon coupon_id
    self.order.user.is_validate_user_coupon coupon_id
  end
  def is_valide_coupon 
    self.get_coupon.is_valide_coupon
  end
  def get_coupon
    self.product.coupon
  end
  def get_user_coupons
    self.order.user.coupons
  end
  def get_discount_type
    self.product.coupon.discount_Type
  end

  def get_discount_value
      self.product.coupon.discount_value
  end
  def actual_price_with_coupon
    if self.get_discount_type == "Fixed"
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
