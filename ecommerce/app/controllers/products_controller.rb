class ProductsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index]
    # include CanCan::ControllerAdditions
  load_and_authorize_resource

   def index
    if params[:search]
      @search_term=params[:search]
      @products=@products.search_by(@search_term)
    
    elsif params[:product] and params[:product][:category_id]
      @filter_term=params[:product][:category_id]
      @products=Product.filter(@filter_term)
      @brand=Brand.all

      @category=Category.all
    elsif params[:product] and params[:product][:brand_id]
      @filter_brand=params[:product][:brand_id]
      @products=Product.filterb(@filter_brand)
      @brand=Brand.all
      @category=Category.all
      
     else
      @brand=Brand.all
      @category=Category.all
      @products=Product.all
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
