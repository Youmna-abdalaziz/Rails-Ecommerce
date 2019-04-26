class OrderProdutsController < InheritedResources::Base

  private

    def order_produt_params
      params.require(:order_produt).permit(:order_id, :product_id, :quantity, :unit_price, :status)
    end

end
