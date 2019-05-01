class CartsController < ApplicationController
  before_action :set_product, only: [:new,:create]
      def new 
        @cart=Cart.new
        create
      end 
      def index
          @carts = current_user.carts
          calculate_total
      end
      def edit
          @cart = Cart.find(params[:id])
          reduce_quantity
      end
     

      def create
          if current_user.carts.find_by(:product_id => @product)
            @cart = current_user.carts.find_by(:product_id => @product)
            if @product.quantity_in_stock.to_i + 1 >= @cart.quantity
              @cart.quantity += 1
              @cart.unit_price=@product.price
              @cart.total =@product.price * @cart.quantity 
            end
          else
            @cart = Cart.new
            @cart.user = current_user
            @cart.product = @product
            @cart.quantity=1
            @cart.unit_price=@product.price
            @cart.total =@product.price
          end
          @cart.save
          redirect_to carts_path()
            
      end
      def destroy
          @cart = Cart.find(params[:id])
          @cart.destroy
          redirect_to carts_path()
      end
      private
        def cart_params
          params.require(:cart).permit( :product_id)
        end
        def set_product
          @product =Product.find(params[:product_id])
        end
        def set_user
          @user = current_user
        end

        def reduce_quantity
          # @cart = Cart.find(params[:id])
          if @cart.quantity > 1
            @cart.quantity -= 1
            @cart.total = @cart.quantity * @cart.unit_price
          end
          @cart.save
          redirect_to carts_path()
        end
        def calculate_total
          @total=0
          current_user.carts.each do|item|
            @total += item.total
          end
          @total
        end


  end
