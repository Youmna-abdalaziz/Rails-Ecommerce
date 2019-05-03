class OrderProductsController < InheritedResources::Base

### order_


  # def validate_user
  #     not found  coupon_user model 

  # end
  def validate_coupon              ### in model coupon  time or count
  end

  def validate_user   
    current_user.c           ###  in model user or coupon_user   
  end


  def calulate_actual_price

  end
  def get_coupon(product_id)
     product = Product.find(id:product_id)
     if product.coupon_id.to_i !=0
       @current_coupon = product.coupon
     else
      @current_coupon =0
     end 
     @current_coupon
  end

  private

    def order_product_params
      params.require(:order_product).permit(:order_id, :product_id, :quantity, :unit_price, :status)
      
    end

end
