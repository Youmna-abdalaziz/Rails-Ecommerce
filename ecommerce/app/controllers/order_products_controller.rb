class OrderProductsController < InheritedResources::Base


  def index
    @order = Order.find(params[:order_id])
    @order_products =@order.order_products
    
  end 
  def show 
    @order_product = OrderProduct.find(params[:id])
    render plain: @order_product.calculate_actual_price.inspect 
  end


  private

    def order_product_params
      params.require(:order_product).permit(:order_id, :product_id, :quantity, :unit_price, :status)
      
    end

end
