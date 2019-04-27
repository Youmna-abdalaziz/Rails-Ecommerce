class ProductsController < InheritedResources::Base


   def new
     @product =Product.new
     @categories = Category.all
     @brands = Brand.all
     @stores = Store.all 
   end

   def edit
    @product = Product.find(params[:id])
    @categories = Category.all
    @brands = Brand.all
    @stores = Store.all 
   end
  
  private

    def product_params
      params.require(:product).permit(:title, :image, :price, :quantity_in_stock, :description, :category_id, :brand_id, :store_id)
    end

    

end
