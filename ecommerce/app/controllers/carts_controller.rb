class CartsController < InheritedResources::Base

  private

    def cart_params
      params.require(:cart).permit(:user_id, :product_id, :quantity, :unit_price, :total)
    end

end
