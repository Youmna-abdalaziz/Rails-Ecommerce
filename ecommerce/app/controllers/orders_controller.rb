class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:user_id, :total_price, :, :actual_price, :status, :address)
    end

end
