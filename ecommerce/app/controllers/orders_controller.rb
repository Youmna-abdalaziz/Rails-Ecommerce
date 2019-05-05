class OrdersController < InheritedResources::Base
  # before_action :validates, only: [:new,:create]

  before_action :authenticate_user!

   def show
       @order = Order.find(params[:id])
   end
  def new
      @order = Order.new
    end
   def index
      @orders = current_user.orders
      #Order.all
   end
#   def edit
#       @orders = Order.find(params[:id])
#   end
#   def update
#       @order = Order.find(params[:id])
    
#       if @order.update(order_params)
#         redirect_to @article
#       else
#         render 'edit'
#       end
#   end

 #render plain: params[:article].inspect
      #render plain: article_params
   def create
    # flash.now[:error] = "Your cart is empty   ."  
    @order = Order.new(order_params)
    @order.user=current_user
    

    carts =current_user.carts
    validate =0
    errors=[]
    if carts.count == 0
      errors.push("cart is empty")
    end
       
    carts.each do|item|
      if item.quantity.to_i > item.product.quantity_in_stock.to_i
          errors.push("product #{item.product.title} not available in stock with Quqntity #{item.quantity} " )
      end
    end
    @order.valid?
     if errors.count == 0
         @order.status="pending"
         @order.total_price = @order.actual_price = 0 
         if @order.save 
            total_price = 0
            actual_price = 0 
            carts.each do|item|
              #######################
                      @order_product=OrderProduct.new
                      @order_product.order_id = @order.id
                      @order_product.product = item.product
                      @order_product.quantity =item.quantity
                      @order_product.unit_price =item.unit_price
                      @order_product.status="pending"
                      @order_product.calculate_actual_price
                      @order_product.save
                      ############ after save order _product 
                      total_price += @order_product.quantity * @order_product.unit_price
                      actual_price += @order_product.actual_price.to_i
              end
              @order.actual_price = actual_price
              @order.total_price = total_price
              @order.save
              current_user.carts.delete_all
              redirect_to @order
            else
              render 'new'
            end
      
      else 
        flash[:error] = "Your cart is empty or in valid check your cart !!!  ."  
        render 'new'             
      end

    end
  

  private

    def order_params
      params.require(:order).permit(:address,:credit_cart,:phone)
      
    end

end
