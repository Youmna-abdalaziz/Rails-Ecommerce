class ProductsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index]
    # include CanCan::ControllerAdditions
  load_and_authorize_resource

   def index
      @products=Product.all
      
      if params[:search]
        @search_term=params[:search]
        @products=@products.search_by(@search_term)
      end
   end 

   def new
     @product =Product.new
     @categories = Category.all
     @brands = Brand.all
     @stores = Store.all 
     authorize! :crud, @product
   end

   def edit
    @product = Product.find(params[:id])
    @categories = Category.all
    @brands = Brand.all
    @stores = Store.all 
    authorize! :crud, @product
   end
  
  private

    def product_params
      params.require(:product).permit(:title, :image, :price, :quantity_in_stock, :description, :category_id, :brand_id, :store_id)
    end

    

end
