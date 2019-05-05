class OrdersController < InheritedResources::Base

  before_action :check_status ,only: [:show]
  def check_status
      @order = Order.find(params[:id])
      @order_id=@order.id
      @count=0

      @ids=OrderProduct.where(["order_id = ?",@order_id]).select(:order_id)
      # for i in @orders.id
      # @order.order_products.order_id
        for x in @ids
          if x == @order_id
            if @Order.order_products.status =='confirmed'

            else
              @count+=1
            end
          end
          if @count == 0
            @order.update(:status,"confirmed")
          else

          end


        end
     
       
  end

  def show

      @order = Order.find(params[:id])
      @order_id=@order.id

      # @order.update(status:"pending")
      @ids=OrderProduct.where(["order_id = ?",@order_id])
# @ii=@ids.find(params[:order_id])
  end
  def new
      @order = Order.new
    end
  def index
    # @ids=OrderProduct.where(["order_id = ?",@order_id]).select(:order_id)

      @orders = Order.all
      # how to change all product status
      # for i in @orders.id
      #   for x in @orders.order_product.order_id
      #     if x == i
      #       count+=1
      #     end
      #   end
      #   for c in count
      #      @order_in_product=OrderProduct.where("order_id= ?",i)
      #     if @Order.order_product.status =='confirmed'
      #     end
      #   end 


  end
  # def edit
  #     @orders = Order.find(params[:id])
  # end
  # def update
  #     @order = Order.find(params[:id])
    
  #     if @order.update(order_params)
  #       redirect_to @article
  #     else
  #       render 'edit'
  #     end
  # end

 #render plain: params[:article].inspect
      #render plain: article_params
  def create
     
      
      @order = Order.new(order_params)
    #   product_ids.each do|product|
    #   end
      @order.user=current_user
      if @order.save
          redirect_to @order
      else
          render 'new'
      end
  end
 
  private

    def order_params
      params.require(:order).permit(product_ids: [])
      
    end
    def order_update_params
      params.require(:order).permit(:status)
      
    end


end
