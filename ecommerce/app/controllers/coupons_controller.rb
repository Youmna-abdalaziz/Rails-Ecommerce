class CouponsController < InheritedResources::Base

  def index
    @coupons=Coupon.all
    @products=Product.all        
    end
    def new
      @coupon =Coupon.new
      @products=Product.all        
    end
  
    def create
      @products=Product.all          
      @coupon = Coupon.new(product_params)
      if @coupon.save
        redirect_to @coupon
      else
          render 'new'
      end
    end
  
    def edit
      @coupon = Coupon.find(params[:id])
      @products=Product.all        
    end


  private

    def coupon_params
      params.require(:coupon).permit(:discount_Type, :discount_value, :usage_num,:expiring_date,:expiring_type, :title)
    end

end
