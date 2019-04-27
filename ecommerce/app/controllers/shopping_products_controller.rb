class ShoppingProductsController < InheritedResources::Base


  def create
    @shopping_cart = ShoppingCart.find(params[:shopping_cart_id])
    @shopping_product = @shopping_cart.shopping_product.create(shopping_product_params)
    redirect_to shopping_cart_path(@shopping_cart)
  end
 
  def destroy
    @shopping_cart = ShoppingCart.find(params[:shopping_cart_id])
    @shopping_product = @shopping_cart.shopping_product.find(params[:id])
    @shopping_product.destroy
    redirect_to shopping_cart_path(@shopping_cart)  
  end
  def update
    @shopping_cart = ShoppingCart.find(params[:shopping_cart_id])
    @shopping_product = @shopping_cart.shopping_product.find(params[:id])
    if @shopping_product.quantity <== 0
      destroy
    redirect_to shopping_cart_path(@shopping_cart)  

    # if @shopping_cart.update(shopping_product)
    #   redirect_to shopping_cart_path(@shopping_cart)  
    # else
    #   render 'edit'
    # end
end

  private

    def shopping_product_params
      params.require(:shopping_product).permit(:shopping_cart_id, :product_id, :quantity)
    end
end
