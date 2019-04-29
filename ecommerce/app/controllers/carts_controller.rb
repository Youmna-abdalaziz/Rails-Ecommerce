class CartsController < ApplicationController
  before_action :set_product, only: [:show,:create,:destroy,:edit,:update]
      def new 
        @cart=Cart.new
      end 
      def index
          @carts = current_user.carts
      end
      def edit
          @cart = Cart.find(params[:id])
      end
      def update
          @cart = Cart.find(params[:id])
        
          if @cart.update(article_params)
            redirect_to @article
          else
            render 'edit'
          end
      end

      def create
          if current_user.carts.find_by(:product_id => @product)
            @cart = current_user.carts.find_by(:product_id => @product)
            if @product.quantity_in_stock > @cart.quantity+1
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
          redirect_to product_carts_path(@product)
            
      end
      def destroy
          @article = Article.find(params[:id])
          @article.destroy
        
          redirect_to articles_path
      end
      private
        def cart_params
          params.require(:cart).permit( :product_id)
        end
        # def product_params
        #   params.require(:product).permit( :product_id)
        # end

        def set_product
          @product =Product.find(params[:product_id])
        end
        def set_user
          @user = current_user
        end


  end
