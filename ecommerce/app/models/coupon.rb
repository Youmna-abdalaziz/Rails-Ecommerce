class Coupon < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :products
    validates :title , presence:true, on: :create
    validates :expiring_type , presence:true, on: :create
    validates :discount_Type , presence:true, on: :create
    validates :discount_value , presence:true, on: :create





    def validate_coupon
        if self.expiring_type == "Expiring_date"
            return self.expiring_date >= DateTime.now
        elsif self.expiring_type=="Usage_num"
            return self.usage_num > self.current_usage
        else 
            return (self.expiring_date >= DateTime.now) && (self.usage_num > self.current_usage)
          
        end        
    end

    def coupon_info
        coupinfo=self.discount_Type + " with value: " +self.discount_value.to_s
        coupinfo
    end  
    

   def get_products
    @products=Product.all
   end

end
