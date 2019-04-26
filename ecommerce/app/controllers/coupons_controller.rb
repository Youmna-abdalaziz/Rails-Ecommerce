class CouponsController < InheritedResources::Base

  private

    def coupon_params
      params.require(:coupon).permit(:expireddate, :Dprice, :precentage, :usagenum)
    end

end
