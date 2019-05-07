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
      @cc=0
      @order_products=OrderProduct.all
      @l=@order_products.length
      @orders=Order.all
        # for @order in @orders
        @orders.each do |order|
          @orders_id=order.id
          @cc=0
          @order_products.each do | order_product|
            @cc+=1
            if order_product.order_id ==@orders_id
              @c+=1
              if order_product.status == "confirmed" 
                @count+=1
              elsif order_product.status == "pending"
                @cd+=1
              end     
              if @cc == @order_products.length
                if @c==@count and @c!=0
                  if order.status=="pending"
                  order.update(status:"confirmed")
                  # @pro =[]
                  # --------------------------------------------------
                  # decrease quantity in stock
                                    # @orderids=OrderProduct.where("order_id = ? ",order.id)
                                    # @orderids.each do |orderid|
                                    #   @pro << orderid.product_id
                                    # end
                                    # @prodcts=Product.where(id:@pro)
                                    # @prodcts.each do |prodct|
                                    #   @stock=prodct.quantity_in_stock-=1
                                    #   prodct.update_attribute(:quantity_in_stock,@stock)
                                    # end
                  @orderids=OrderProduct.where("order_id = ? ",order.id)
                  @orderids.each do |orderid|
                    @prodcts=Product.where(id:orderid.product_id)
                    @prodcts.each do |prodct|
                    @stock=prodct.quantity_in_stock=prodct.quantity_in_stock-orderid.quantity
                    prodct.update_attribute(:quantity_in_stock,@stock)
                  end
                end
           
                  # ================================================
                end 
              end

                  @c=0
                  @count=0
                  @cd=0
                end
              

            elsif order_product.order_id !=@orders_id  
              if @c==@count and @c!=0
                if order.status =="pending"

                order.update(status:"confirmed")
                @pro =[]
# --------------------------------------------------
# decrease quantity in stock
                  @orderids=OrderProduct.where("order_id = ? ",order.id)
                  # @orderids.each do |orderid|
                  #   @pro << orderid.product_id
                  # end
                  # @prodcts=Product.where(id:@pro)
                  # @prodcts.each do |prodct|
                  #   @stock=prodct.quantity_in_stock=prodct.quantity_in_stock-
                  #   prodct.update_attribute(:quantity_in_stock,@stock)
                  # end
                  @orderids.each do |orderid|
                    # @pro << orderid.product_id
                  
                    @prodcts=Product.where(id:orderid.product_id)
                    @prodcts.each do |prodct|
                    @stock=prodct.quantity_in_stock=prodct.quantity_in_stock-orderid.quantity
                    prodct.update_attribute(:quantity_in_stock,@stock)
                  end
                end
# ================================================
              end
            end

              @c=0
              @count=0
              @cd=0
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
      # @product=
      @order_product = OrderProduct.find(params[:id])
   
      if @order_product.update(order_product_params) and @order_product.status=="confirmed"
        # @dd=1
      #  @pp= @order_product.product.quantity_in_stock -=1
      #  @product=Product.find(@order_product.product_id)
        # @product.update_attribute(:quantity_in_stock,@pp)
       render 'show'
      else
        render 'edit'
      end
    end
    private
  
      def order_product_params
        params.require(:order_product).permit(:order_id, :product_id, :quantity, :unit_price, :status)
        
      end
   
  
  end
  