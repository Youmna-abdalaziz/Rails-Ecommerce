class ShoppingProdutsController < InheritedResources::Base

  private

    def shopping_produt_params
      params.require(:shopping_produt).permit(:shopping_cart_id, :product_id, :quantity)
    end

end
