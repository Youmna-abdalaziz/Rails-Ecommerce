class OrdersController < InheritedResources::Base



#   def show
#       @order = Order.find(params[:id])
#   end
#   def new
#       @order = Order.new
#     end
#   def index
#       @orders = Order.all
#   end
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

end
