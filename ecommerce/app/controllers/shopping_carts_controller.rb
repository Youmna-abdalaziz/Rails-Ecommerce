class ShoppingCartsController < InheritedResources::Base

  private

    def shopping_cart_params
      params.require(:shopping_cart).permit(:user_id)
    end

end
