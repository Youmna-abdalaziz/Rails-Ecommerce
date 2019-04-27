class ProductsController < InheritedResources::Base


  # def new
  #   @category = Category.all
  #   @brand = Brand.all
  #   @store = Store.all
  #   # authorize! :create, @article    
  # end

  # def edit
  #   @category = Category.all
  #   @brand = Brand.all
  #   @store = Store.all
  #   # authorize! :update, @category
   
  # end
  
  private

    def product_params
      params.require(:product).permit(:title, :image, :price, :quantity_in_stock, :description, :category_id, :brand_id, :store_id)
    end

    

end
