class ProductsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index,:show]
    # include CanCan::ControllerAdditions
  load_and_authorize_resource
  def index
    if user_signed_in?
      if current_user.is_seller?
       @products=Product.where(user_id:current_user.id)
     else
        @products=Product.all
      end
    else 
      @products=Product.all
    end
    @brand=Brand.all
    @category=Category.all    
    @user=User.all
    # ==========================
    # unless  params[:search]
    #   @products=Product.all
    #   @brand=Brand.all
    #   @category=Category.all    
    #   @user=User.all
      
    # end
    # =============================
    # if params[:search] and params[:product][:category_id]=nil
    if params[:search]
      @search_term=params[:search]
      @products=Product.search_by(@search_term)
      @brand=Brand.all
      @user=User.all
      @category=Category.all
      # @search_term=params[:search]
      if params[:product][:category_id] !='' and (params[:product][:brand_id] =='' or params[:product][:brand_id] !='')  and (params[:product][:user_id] =='' or params[:product][:user_id] !='')  and (params[:fromprice][:price] =='' or params[:fromprice][:price] !='') 
        @filter_brand=params[:product][:brand_id]
        @filter_term=params[:product][:category_id]
        @search_term=params[:search]
        @tprice =params[:toprice][:tprice]
        @price =params[:fromprice][:price]
        # @p=@products.filter(@search_term)
        @products=Product.filter(@filter_term,@search_term)
        @brand=Brand.all
        @user=User.all

        @category=Category.all
      elsif params[:product][:brand_id] !='' and (params[:product][:category_id] =='' or params[:product][:category_id] !='') 
        @filter_brand=params[:product][:brand_id]

        @search_term=params[:search]

        @products=Product.filterb(@filter_brand,@search_term)
        @user=User.all

        @brand=Brand.all
        @category=Category.all


      elsif params[:toprice][:tprice] !='' and params[:fromprice][:price] !=''  and   (params[:product][:brand_id] !='' or params[:product][:brand_id] =='' ) and (params[:product][:category_id] !='' or params[:product][:category_id] =='' )  
        # @filter_seller=params[:product][:user_id]
        @search_term=params[:search]
        @tprice =params[:toprice][:tprice]
        @price =params[:fromprice][:price]
        # if params[:product][:user_id] !=''
        #   @seller=params[:product][:user_id]
        # else
        #   @seller=User.all
        # end
        # if params[:product][:brand_id] !=''
        #   @brand=params[:product][:brand_id]
        # else
        #   @brand=Brand.all        
        # end
        # if params[:product][:category_id] !=''
        #   @filter_term=params[:product][:category_id]
        # else
        #   @category=Category.all             
        # end
        # @filter_term=params[:product][:category_id]

        @products=Product.filterp(@price,@tprice,@search_term,)
        @seller=User.all
        @brand=Brand.all
        @category=Category.all
         

      elsif params[:product][:user_id] !='' and (params[:product][:brand_id] =='' or params[:product][:brand_id] !='') and (params[:product][:category_id] =='' or params[:product][:category_id] !='') 
        @filter_seller=params[:product][:user_id]
        
        @search_term=params[:search]

        @products=Product.filters(@filter_seller,@search_term)
        @user=User.all

        @brand=Brand.all
        @category=Category.all

      elsif params[:product][:category_id] =='' and params[:product][:brand_id] =='' and params[:product][:user_id] =='' 
        @products=Product.search_by(@search_term)
        @brand=Brand.all
        @category=Category.all
        @user=User.all
        

 
      end


    end

  end 
  

  def new
    @product =Product.new
    @categories = Category.all
    @brands = Brand.all
    @coupons=Coupon.all
    #  @stores = Store.all 
    #  @users = User.where(id:current_user.id)
    authorize! :crud, @product 
  end

  def create
    @brands = Brand.all
    @categories = Category.all
    @coupons=Coupon.all

    @product = Product.new(product_params)
    puts "=============== #{product_params}==================="
    @product.user_id = current_user.id
    # @product.coupon_id = current_user.id
    if @product.save
      redirect_to products_path
    else
        render 'new'
    end
    authorize! :crud, @product 
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
    @brands = Brand.all
    @coupons=Coupon.all
    # @stores = Store.all 
    # @users = User.where(id:current_user.id)
    @product.user_id = current_user.id
    authorize! :crud, @product
  end

  def update
    @product = Product.find(params[:id])
    @categories = Category.all
    @brands = Brand.all
    @coupons=Coupon.all
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
    authorize! :crud, @product 
  end

  private

    def product_params
      params.require(:product).permit(:title, :image, :price, :quantity_in_stock, :description, :category_id, :brand_id, :coupon_id)
    end

end
