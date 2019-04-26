class ProductsController < InheritedResources::Base
def index
  @products = Product.all
  @brands = Brand.all
  @categories = Category.all
  @stores = Store.all
end

def new
  @product = Product.new
  @brands = Brand.all
  @categories = Category.all
  @stores = Store.all
end

def edit
  @brands = Brand.all
  @categories = Category.all
  @stores = Store.all
end
  private

    def product_params
      params.require(:product).permit(:title, :image, :price, :quantity_in_stock, :description, :category_id, :brand_id, :store_id)
    end

end
