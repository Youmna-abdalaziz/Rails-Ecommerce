class CouponsController < InheritedResources::Base

  private

    def coupon_params
      params.require(:coupon).permit(:discount_Type, :discount_value, :usage_num,:expiring_date,:expiring_type)
    end

end
