class OrderProductsController < InheritedResources::Base

### order_


  # def validate_user
  #     not found  coupon_user model 

  # end
  def index
    @order_products =OrderProduct.all
    
  end 
  def show 
    @order_product = OrderProduct.find(params[:id])
    render plain: @order_product.calculate_actual_price.inspect 
  end
  def validate_coupon              ### in model coupon  time or count
  end

  


  
  

  

  private

    def order_product_params
      params.require(:order_product).permit(:order_id, :product_id, :quantity, :unit_price, :status)
      
    end

end
