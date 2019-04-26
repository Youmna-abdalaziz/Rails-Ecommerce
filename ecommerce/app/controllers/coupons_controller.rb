class CouponsController < InheritedResources::Base

  private

    def coupon_params
      params.require(:coupon).permit(:expireddate, :D-price, :precentage, :usagenum)
    end

end
