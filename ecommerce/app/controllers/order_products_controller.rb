class OrderProductsController < InheritedResources::Base

  private

    def order_product_params
      params.require(:order_product).permit(:order_id, :product_id, :quantity, :unit_price, :status)
      
    end

end
