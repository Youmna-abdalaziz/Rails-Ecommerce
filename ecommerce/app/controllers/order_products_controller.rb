class OrderProductsController < InheritedResources::Base

  before_action :authenticate_user!
  def index
    @order_products =OrderProduct.all
    
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
