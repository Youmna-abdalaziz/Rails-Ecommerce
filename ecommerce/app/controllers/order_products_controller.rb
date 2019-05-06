class OrderProductsController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :check_quantity ,only: [:edit]
  before_action :check_state ,only: [:index]
    
    def index
      
      if @user_seller=current_user.is_seller
        
        @pro_seller=Product.where("user_id = ?",current_user.id)
        @p=[]
        @pro_seller.each do |pro|
        @p << (pro.id)
       end
       @order_products=OrderProduct.where(product_id:@p)    
      end

      # @order_products=OrderProduct.all
        @product = Product.all
        @orders=Order.all

    end
    
    def check_quantity
      @order_products=OrderProduct.find(params[:id])
      if  (@order_products.product.quantity_in_stock.to_i == 0.to_i)
        redirect_to order_products_url
      end
    end
    def check_state
      @count=0
      @c=0
      @cd=0
      @order_products=OrderProduct.all
      @orders=Order.all
        # for @order in @orders
        @orders.each do |order|
          @orders_id=order.id
   
          # for @order_product in order_products
          @order_products.each do |order_product|
            if order_product.order_id == @orders_id
              @c+=1
              if order_product.order_id == @orders_id and  order_product.status == "confirmed"
                @count+=1
                # if @order_product.status == "confirmed"
                #   @c+=1
              elsif  order_product.order_id == @orders_id and order_product.status == "pending"
                @cd+=1
              end 
              if @cd ==0 and @count == @c
                order.update(status:"confirmed")
                @count=0
                @c=0
                @cd=0
              
  
              end
  
            else order_product.order_id != @orders_id
                # @c+=1
            end
          end     
        end
      end  
    
  end
    
    def create
      @product = Product.all
      @order =Order.all
      @order_product = OrderProduct.new(product_params)
      puts "=============== #{product_params}==================="
      @product.user_id = current_user.id
      # @product.coupon_id = current_user.id
      if @product.save
        redirect_to @product
      else
          render 'new'
      end
    end
  
    def edit
      # @coupons=Coupon.all
      if @product_quantity != 0
        @order_product = OrderProduct.find(params[:id])
        @product = Product.all
        # @oo=@product.find(params[:quantity_in_stock])
        @order =Order.all
        # @stores = Store.all 
        @users = User.where(id:current_user.id)
      else
        render 'index'
      end
      # authorize! :crud, @product
    end
    def update
      @product_quantity = OrderProduct.find(params[:id])
   
      if @product_quantity.update(order_product_params)
        @product_quantity = OrderProduct.find(params[:id])
        @product_quantity.product.quantity_in_stock -=1
        redirect_to @product_quantity
      else
        render 'edit'
      end
    end
    private
  
      def order_product_params
        params.require(:order_product).permit(:order_id, :product_id, :quantity, :unit_price, :status)
        
      end
      def 
      end
  
  end
  