class Coupon < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :products

    def validate_coupon
        if self.expiring_type == "date"
            return self.expiring_date >= DateTime.now
        elsif self.expiring_type=="usage"
            return self.usage_num > self.current_usage
        else 
            return (self.expiring_date >= DateTime.now) && (self.usage_num > self.current_usage)
          
        end        
    end

    

end
